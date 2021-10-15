import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'booking_detail.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<BookingScreen> {
  bool isBooking = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return isBooking
        ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Bookings",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -1,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return BookingDetailScreen();
                            },
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400, width: 0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15),
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.0),
                                    child: Text("Fish chef",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 19)),
                                  ),
                                  SizedBox(height: 16),
                                  Container(
                                    margin: EdgeInsets.only(left: 12.0),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 23.0, vertical: 4),
                                    // width: 120,
                                    //height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(16.0)),
                                    child: Center(
                                      child: Text(
                                        'Done',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 12.0, bottom: 14),
                                    child: Text(
                                      DateFormat.MMMMEEEEd()
                                          .format(DateTime.now())
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    "assets/images/fish1.png",
                                    fit: BoxFit.cover,
                                    width: 120,
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Bookings",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  Container(
                    width: 170,
                    height: 170,
                    child: Image.asset("assets/images/mechancis-new.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You don't have any bookings",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
          );
  }
}
