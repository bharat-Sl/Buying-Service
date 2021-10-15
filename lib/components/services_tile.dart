import 'package:buying_service/screens/selection/selection.dart';
import 'package:flutter/material.dart';

class ServicesTile extends StatelessWidget {
  final Color color;
  final String text;
  final String image;
  final double cost;
  final int time;

  const ServicesTile(
      {Key key,
      this.color = Colors.deepPurpleAccent,
      this.text = "Service",
      this.image,
      this.cost = 0.0,
      this.time = 0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => SelectionPage(
              serviceName: text,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        width: 200,
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.fromRGBO(191, 150, 86, 0.7),
              width: 0.8,
            )),
        child: Stack(
          children: [
            Positioned(
              top: 17,
              left: 7,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 7,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(text: "★", style: TextStyle(fontSize: 17)),
                  TextSpan(text: "0.0 ", style: TextStyle(fontSize: 15)),
                  TextSpan(
                      text: "(0)",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  TextSpan(
                      text: "\n \$$cost•$time min",
                      style: TextStyle(fontSize: 15)),
                ]),
              ),
            ),
            image == null
                ? SizedBox()
                : Positioned(
                    bottom: -110,
                    right: -110,
                    child: Container(
                      height: 220,
                      width: 220,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: color),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 30,
                              left: 30,
                              child: Container(
                                  width: 70,
                                  height: 70,
                                  child: Image.asset(image)))
                        ],
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
