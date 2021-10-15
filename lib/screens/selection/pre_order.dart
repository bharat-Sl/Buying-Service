import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'order.dart';

class PreOrderPage extends StatefulWidget {
  final String serviceName;

  const PreOrderPage({Key key, this.serviceName = "Services"})
      : super(key: key);
  @override
  _PreOrderPageState createState() => _PreOrderPageState();
}

class _PreOrderPageState extends State<PreOrderPage> {
  List<String> dateTime = ["", ""];

  Future<String> selectTime(BuildContext context) async {
    TimeOfDay pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: 8, minute: 00),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              primaryColor: Colors.black,
              accentColor: Colors.red,
              colorScheme: ColorScheme.light(primary: Colors.black),
              buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
            ),
            child: child,
          );
        });
    return DateFormat('hh:mm a').format(
        DateTime.utc(2000, 0, 0, pickedTime.hour, pickedTime.minute, 0, 0, 0));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DateTime now = DateTime.now().add(Duration(days: 1));
    dateTime[0] = DateFormat('hh:mm a').format(now);
    dateTime[1] = DateFormat('EE, dd MMM').format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(191, 150, 86, 1),
        elevation: 10,
        shadowColor: Color.fromRGBO(241, 190, 126, 1),
        title: Text(
          "Booking details",
          style: TextStyle(fontSize: 22),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[400], width: 0.5)),
              child: Theme(
                data: ThemeData(
                  unselectedWidgetColor: Colors.grey[400],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Booking time",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            dateTime[0] = (await selectTime(context));
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.white, width: 0.5)),
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "${dateTime[0]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "-",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            var d = await showDatePicker(
                              context: context,
                              initialDate:
                                  DateTime.now().add(Duration(days: 1)),
                              firstDate: DateTime.now().add(Duration(days: 0)),
                              lastDate: DateTime.now().add(Duration(days: 31)),
                            );
                            dateTime[1] =
                                DateFormat('EE, dd MMM').format(d).toString();
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.white, width: 0.5)),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "${dateTime[1]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Any other notes for the provider?",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Notes",
                  labelStyle: TextStyle(color: Colors.grey[400]),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5),
                  ),
                ),
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 1,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => OrderPage(),
                ),
              );
            },
            child: Container(
              height: 100,
              child: Center(
                  child: Container(
                width: MediaQuery.of(context).size.width - 30,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "Confirm Booking",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
