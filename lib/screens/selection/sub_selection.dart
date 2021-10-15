import 'package:buying_service/screens/selection/pre_order.dart';
import 'package:flutter/material.dart';

class SubSelectionPage extends StatefulWidget {
  final String serviceName;

  const SubSelectionPage({Key key, this.serviceName = "Services"})
      : super(key: key);
  @override
  _SubSelectionPageState createState() => _SubSelectionPageState();
}

class _SubSelectionPageState extends State<SubSelectionPage> {
  void _update(int a) {
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Tile.numItems = 0;
    Tile.sum = 0;
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
          widget.serviceName,
          style: TextStyle(fontSize: 22),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              color: Colors.white,
              height: 100,
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.shield,
                        size: 60,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                  Text(
                    "Technician travel & safety charge\nof ₹ 99 will be added at checkout",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ...[100, 200, 300, 400].map(
              (e) => Tile(
                amount: e,
                update: _update,
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      floatingActionButton: Tile.numItems > 0
          ? InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => PreOrderPage(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(191, 150, 86, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          )),
                      child: Center(
                        child: Text(
                          "${Tile.numItems}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "₹${Tile.sum}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                    )),
                    Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          : SizedBox(),
    );
  }
}

class Tile extends StatefulWidget {
  static int sum = 0;
  static int numItems = 0;
  final ValueChanged<int> update;
  final int amount;
  final String name;

  const Tile(
      {Key key,
      this.amount,
      this.name = "Decorative Ceiling Fan Installation",
      this.update})
      : super(key: key);
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 5,
      margin: EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: Color.fromRGBO(43, 43, 43, 1),
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(191, 150, 86, 1), blurRadius: 1)
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                  flex: 11,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "★ 4.76",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "19.7k ratings",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "₹ ${widget.amount}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 6,
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 20,
                          top: 20,
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Positioned(
                          right: 35,
                          bottom: 5,
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 2),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                num == 0
                                    ? SizedBox()
                                    : InkWell(
                                        onTap: () {
                                          setState(() {
                                            widget.update(1);
                                            num -= 1;
                                            Tile.sum -= widget.amount;
                                            Tile.numItems -= 1;
                                          });
                                        },
                                        child: Text(
                                          "—",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(191, 150, 86, 1),
                                          ),
                                        ),
                                      ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widget.update(1);
                                      num += 1;
                                      Tile.sum += widget.amount;
                                      Tile.numItems += 1;
                                    });
                                  },
                                  child: Text(
                                    num.toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(191, 150, 86, 1),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widget.update(1);
                                      num += 1;
                                      Tile.sum += widget.amount;
                                      Tile.numItems += 1;
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(191, 150, 86, 1),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
