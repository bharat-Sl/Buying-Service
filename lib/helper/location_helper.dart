import 'dart:convert';

import 'package:http/http.dart';

const GOOGLE_API_KEY = "AIzaSyBzTmYH5qSqW8QbCbTaSF1xdz8AXHd3fpQ";

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return "https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=18&size=600x300&maptype=roadmap&markers=color:red%7Clabel:P%7C$latitude,$longitude&key=$GOOGLE_API_KEY";
  }

  static Future<String> getPlaceAddress(
      {double latitude, double longitude}) async {
    final url = Uri.parse(
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$GOOGLE_API_KEY");

    final response = await get(url);
    print(json.decode(response.body)["results"][0]["formatted_address"]);
    return json.decode(response.body)["results"][0]["formatted_address"];
  }
}
