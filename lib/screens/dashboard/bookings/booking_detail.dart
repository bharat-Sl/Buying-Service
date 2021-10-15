import 'package:buying_service/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DemoItem {
  String item;
  double price;
  DemoItem({this.item, this.price});
}

class BookingDetailScreen extends StatelessWidget {
  final List<DemoItem> demoItem = [
    DemoItem(item: "Bathroom cleaniing", price: 65.4),
    DemoItem(item: "Washing", price: 65.4),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule",
            style: TextStyle(
                wordSpacing: 1,
                letterSpacing: 0.5,
                fontSize: 22,
                color: Colors.grey.shade300)),
        iconTheme: IconThemeData(color: Colors.grey.shade300),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              //booking
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400, width: 0.5),
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
                              borderRadius: BorderRadius.circular(16.0)),
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
                          padding: EdgeInsets.only(left: 12.0, bottom: 14),
                          child: Text(
                            DateFormat.MMMMEEEEd()
                                .format(DateTime.now())
                                .toString(),
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 1),
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
              // address
              Container(
                  height: height * 0.16,
                  width: width,
                  padding: EdgeInsets.only(left: 12),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.grey.shade400, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6),
                      Text("Address",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey.shade500,
                            size: 30,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.only(right: 18.0),
                            child: Text(
                              Provider.of<HomeProvider>(context).location,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade300),
                            ),
                          )),
                        ],
                      )
                    ],
                  )),
              ///////   Booking Time
              Container(
                  width: width,
                  padding: EdgeInsets.only(left: 15, top: 18, bottom: 18),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.grey.shade400, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 9),
                      Text("Booking time",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.grey.shade500,
                            size: 25,
                          ),
                          SizedBox(width: 14),
                          Expanded(
                            child: Text(
                              DateFormat.MMMMEEEEd()
                                  .format(DateTime.now())
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.6,
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),

              ///////// Notes
              Container(
                  width: width,
                  padding: EdgeInsets.only(left: 15, top: 12, bottom: 18),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.grey.shade400, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 9),
                      Text("Notes",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.note,
                            color: Colors.grey.shade500,
                            size: 25,
                          ),
                          SizedBox(width: 14),
                          Expanded(
                            child: Text(
                              "Nothing special",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.6,
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              ///////// payment
              Container(
                  width: width,
                  padding:
                      EdgeInsets.only(left: 15, top: 12, bottom: 18, right: 15),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.grey.shade400, width: 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 9),
                      Text("Payment summary",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      ...(demoItem).map((e) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e.item,
                                style: TextStyle(
                                    color: Colors.grey.shade300,
                                    letterSpacing: 1)),
                            Text("\$ " + e.price.toString(),
                                style: TextStyle(color: Colors.grey.shade300)),
                          ],
                        );
                      }).toList(),
                      SizedBox(height: 6),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tax (5.0%)",
                                style: TextStyle(
                                    color: Colors.grey.shade300,
                                    letterSpacing: 1)),
                            Text("\$ " + "4",
                                style: TextStyle(color: Colors.grey.shade300)),
                          ],
                        ),
                      ),
                      SizedBox(height: 6),

                      /// divider
                      Divider(color: Colors.grey.shade600),
                      SizedBox(height: 5),

                      ///total
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                  fontSize: 16)),
                          Text("\$ " + "84.0",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                    ],
                  )),
              SizedBox(height: 8),
              //////// Button Rasied
              Container(
                width: width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Book again",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9))),
                ),
              ),
              SizedBox(height: 26),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
    );
  }
}
