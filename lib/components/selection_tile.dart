import 'package:buying_service/screens/selection/sub_selection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectionTile extends StatelessWidget {
  final String text;
  final String image;

  const SelectionTile({Key key, this.text = "Service", this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => SubSelectionPage()));
      },
      child: Container(
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.width / 3 + 50,
          decoration: BoxDecoration(
              color: Color.fromRGBO(43, 43, 43, 1),
              border: Border.all(
                color: Color.fromRGBO(191, 150, 86, 1),
                width: 0.5,
              )),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(191, 150, 86, 0.2),
                minRadius: MediaQuery.of(context).size.width / 9,
                child: text == "Looking for something else?"
                    ? Text(
                        "Something\nElse?",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.amber),
                        textAlign: TextAlign.center,
                      )
                    : SizedBox(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
