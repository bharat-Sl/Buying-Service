import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2, milliseconds: 300)).then((value) async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => Dashboard(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(43, 43, 43, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      child: Center(
                        child: Text(
                          "B",
                          style: TextStyle(
                            fontSize: 50,
                            color: Color.fromRGBO(191, 150, 86, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(43, 43, 43, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      child: Center(
                        child: Text(
                          "U",
                          style: TextStyle(
                            fontSize: 50,
                            color: Color.fromRGBO(191, 150, 86, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(43, 43, 43, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      child: Center(
                        child: Text(
                          "Y",
                          style: TextStyle(
                            fontSize: 50,
                            color: Color.fromRGBO(191, 150, 86, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(43, 43, 43, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      child: Center(
                        child: Text(
                          "I",
                          style: TextStyle(
                            fontSize: 50,
                            color: Color.fromRGBO(191, 150, 86, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(43, 43, 43, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      child: Center(
                        child: Text(
                          "N",
                          style: TextStyle(
                            fontSize: 50,
                            color: Color.fromRGBO(191, 150, 86, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(43, 43, 43, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      child: Center(
                        child: Text(
                          "G",
                          style: TextStyle(
                            fontSize: 50,
                            color: Color.fromRGBO(191, 150, 86, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(191, 150, 86, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      child: Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(191, 150, 86, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      child: Center(
                        child: Text(
                          "E",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(191, 150, 86, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      child: Center(
                        child: Text(
                          "R",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(191, 150, 86, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      child: Center(
                        child: Text(
                          "V",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(191, 150, 86, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      child: Center(
                        child: Text(
                          "I",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(191, 150, 86, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      child: Center(
                        child: Text(
                          "C",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(191, 150, 86, 1),
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                      child: Center(
                        child: Text(
                          "E",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromRGBO(43, 43, 43, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Text(
            "Sasti Service Milegi Yahi",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
