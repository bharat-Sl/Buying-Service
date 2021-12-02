import 'package:buying_service/screens/selection/selection.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final Color color;
  final String text;
  final String image;

  const CategoryTile(
      {Key key,
      this.color = Colors.deepPurpleAccent,
      this.text = "Service",
      this.image})
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
        width: 170,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 7,
              left: 7,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            image == null
                ? SizedBox()
                : Positioned(
                    top: 0,
                    bottom: 0,
                    right: 7,
                    child: Container(
                      height: 55,
                      width: 55,
                      child: Image.asset(image),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
