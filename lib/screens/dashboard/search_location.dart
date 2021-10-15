import 'package:buying_service/helper/location_helper.dart';
import 'package:buying_service/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';
import 'package:search_map_place/search_map_place.dart';

class SearchLocationScreen extends StatefulWidget {
  @override
  _SearchLocationScreenState createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  bool minimize = true;
  double userLocationLatitude;
  double userLocationLongitude;
  bool isLoading = false;
  //  LatLng latLng_1 = LatLng(widget.latitude, widget.longitude);
  //   LatLng latLng_2 = LatLng(userLocationLatitude, userLocationLongitude);

  @override
  void initState() {
    super.initState();
    // getCurrentLocation();
  }

  Future changePlace(String address, BuildContext context) async {
    if (mounted)
      setState(() {
        Provider.of<HomeProvider>(context, listen: false).location = address;
      });
    Navigator.of(context).pop();
  }

  //   Future getCurrentLocation() async {
  //   final locData = await Location().getLocation();
  //   setState(() {
  //     userLocationLatitude = locData.latitude;
  //     userLocationLongitude = locData.longitude;
  //   });
  // }

  // Future getCurrentLocation() async {

  //   if (mounted) {
  //     setState(() {
  //       userLocationLatitude = locData.latitude;
  //       userLocationLongitude = locData.longitude;
  //     });
  //     print(userLocationLatitude);
  //     print(userLocationLongitude);
  //   }
  // }

  Future getLoc() async {
    final locData = await Location().getLocation();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(" ${locData.latitude} ${locData.longitude}")));
    await LocationHelper.getPlaceAddress(
            latitude: locData.latitude, longitude: locData.longitude)
        .then((value) {
      print(value.toString());

      Provider.of<HomeProvider>(context, listen: false).location =
          value.toString();
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
            "${Provider.of<HomeProvider>(context, listen: false).location} ${locData.latitude}")));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: isLoading == true
          ? Center(child: CircularProgressIndicator())
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // search for location
                Container(
                  padding: EdgeInsets.only(top: 35),
                  height: height * 0.3,
                  width: width,
                  color: Color.fromRGBO(191, 150, 86, 1),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Padding(
                              padding: EdgeInsets.only(top: 13),
                              child: InkWell(
                                  onTap: () {
                                    if (mounted)
                                      setState(() {
                                        Navigator.of(context).pop();
                                      });
                                  },
                                  child: Icon(Icons.arrow_back,
                                      size: 28, color: Colors.white)),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              // child: TextField(
                              //   style: TextStyle(color: Colors.white),
                              //   decoration: InputDecoration(
                              //       hintText:
                              //           "Enter building/society/landmark/locality",
                              //       focusedBorder: UnderlineInputBorder(
                              //           borderSide: BorderSide(
                              //               color: Colors.white, width: 0.4)),
                              //       hintStyle: TextStyle(
                              //           color: Colors.white54,
                              //           letterSpacing: 1.2,
                              //           fontWeight: FontWeight.w600)),
                              //   cursorColor: Colors.white54,
                              //   cursorHeight: 24,
                              // ),
                              child: Container(
                                width: width,
                                height: minimize ? height * 0.27 : height,
                                color: Color.fromRGBO(191, 150, 86, 1),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SearchMapPlaceWidget(
                                        clearIcon: Icons.clear,

                                        language: "en",
                                        apiKey:
                                            "AIzaSyBzTmYH5qSqW8QbCbTaSF1xdz8AXHd3fpQ",
                                        darkMode: true,
                                        onSelected: (place) async {
                                          print(place.description);
                                          await changePlace(
                                              place.description, context);
                                          // home.location = place.description;
                                          // print("${home.location} location");
                                        },

                                        // location: LatLng(20.5937, 78.9629),
                                        // radius: 100000,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 3),
                // CircleAvatar(
                //   backgroundColor: Color.fromRGBO(191, 150, 86, 1),
                //   radius: 24,
                //   child: Text(
                //     "or",
                //     style:
                //         TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                //   ),
                // ),
                SizedBox(height: 20),
                Container(
                  width: width,
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(191, 150, 86, 1)),
                    onPressed: () async {
                      if (mounted) {
                        setState(() {
                          isLoading = true;
                        });
                      }

                      await getLoc();
                      if (mounted) {
                        setState(() {
                          isLoading = false;
                        });
                      }
                      Navigator.of(context).pop();
                    },
                    label: Text(
                      "Use current location",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    icon: Icon(Icons.my_location, color: Colors.white),
                  ),
                ),
              ],
            ),
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
    );
  }
}
