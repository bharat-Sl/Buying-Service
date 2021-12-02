import 'package:buying_service/components/category_tile.dart';
import 'package:buying_service/components/services_tile.dart';
import 'package:buying_service/providers/home_provider.dart';
import 'package:buying_service/screens/dashboard/search_location.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int slideIndex = 0;

  void updateSlideIndex(int index) {
    setState(() {
      slideIndex = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final home = Provider.of<HomeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Welcome Top View
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(191, 150, 86, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "How can I help you\ntoday?",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 38,
                        height: 1,
                        letterSpacing: -0.6,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return SearchLocationScreen();
                        },
                      ));
                      setState(() {});
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.black.withOpacity(0.8),
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            home.location.isEmpty
                                ? "Choose address"
                                : home.location,
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.8)),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down,
                            color: Colors.black.withOpacity(0.8))
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(211, 180, 116, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black.withOpacity(0.7),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Find what you need",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.9)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 5),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                padding: EdgeInsets.symmetric(horizontal: 5),
                shrinkWrap: true,
                childAspectRatio: 170 / 60,
                children: [
                  CategoryTile(
                    color: Colors.red[400],
                    text: "Cleaners",
                    image: "assets/images/cleaner.png",
                  ),
                  CategoryTile(
                    color: Colors.deepPurple[400],
                    text: "Electricians",
                    image: "assets/images/electricians.png",
                  ),
                  CategoryTile(
                    color: Colors.indigo,
                    text: "Mechanics",
                    image: "assets/images/mechancis-new.png",
                  ),
                  CategoryTile(
                    color: Colors.yellow[700],
                    text: "Chefs",
                    image: "assets/images/icon-new.png",
                  ),
                  CategoryTile(
                    color: Colors.brown[400],
                    text: "Painters",
                    image: "assets/images/painters.png",
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          CarouselSlider.builder(
            itemCount: 5,
            options: CarouselOptions(
                height: height * 0.225,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  updateSlideIndex(index);
                  return false;
                }),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Padding(
              padding: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.025,
                  right: width * 0.025),
              child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/slider.png'))),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return index == slideIndex
                      ? Container(
                          width: width * 0.05,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(211, 180, 116, 1),
                          ),
                        )
                      : Container(
                          width: width * 0.05,
                          height: 10,
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        );
                })),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Popular services",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ServicesTile(
                      color: Colors.red[400],
                      text: "Cleaners",
                      image: "assets/images/cleaner.png",
                    ),
                    ServicesTile(
                      color: Colors.deepPurple[400],
                      text: "Electricians",
                      image: "assets/images/electricians.png",
                    ),
                    ServicesTile(
                      color: Colors.indigo,
                      text: "Mechanics",
                      image: "assets/images/mechancis-new.png",
                    ),
                    ServicesTile(
                      color: Colors.yellow[700],
                      text: "Chefs",
                      image: "assets/images/icon-new.png",
                    ),
                    ServicesTile(
                      color: Colors.brown[400],
                      text: "Painters",
                      image: "assets/images/painters.png",
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Recommended services",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ServicesTile(
                      color: Colors.red[400],
                      text: "Cleaners",
                      image: "assets/images/cleaner.png",
                    ),
                    ServicesTile(
                      color: Colors.deepPurple[400],
                      text: "Electricians",
                      image: "assets/images/electricians.png",
                    ),
                    ServicesTile(
                      color: Colors.indigo,
                      text: "Mechanics",
                      image: "assets/images/mechancis-new.png",
                    ),
                    ServicesTile(
                      color: Colors.yellow[700],
                      text: "Chefs",
                      image: "assets/images/icon-new.png",
                    ),
                    ServicesTile(
                      color: Colors.brown[400],
                      text: "Painters",
                      image: "assets/images/painters.png",
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          ////
          CarouselSlider.builder(
            itemCount: 5,
            options: CarouselOptions(
                height: height * 0.225,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  updateSlideIndex(index);
                  return false;
                }),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Padding(
              padding: EdgeInsets.only(
                  top: height * 0.025,
                  left: width * 0.025,
                  right: width * 0.025),
              child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/adidas.png'))),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.02),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return index == slideIndex
                      ? Container(
                          width: width * 0.05,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(211, 180, 116, 1),
                          ),
                        )
                      : Container(
                          width: width * 0.05,
                          height: 10,
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        );
                })),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Plumbers",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ServicesTile(
                      color: Colors.red[400],
                      text: "Cleaners",
                      image: "assets/images/cleaner.png",
                    ),
                    ServicesTile(
                      color: Colors.deepPurple[400],
                      text: "Electricians",
                      image: "assets/images/electricians.png",
                    ),
                    ServicesTile(
                      color: Colors.indigo,
                      text: "Mechanics",
                      image: "assets/images/mechancis-new.png",
                    ),
                    ServicesTile(
                      color: Colors.yellow[700],
                      text: "Chefs",
                      image: "assets/images/icon-new.png",
                    ),
                    ServicesTile(
                      color: Colors.brown[400],
                      text: "Painters",
                      image: "assets/images/painters.png",
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: width * 0.025, bottom: 5),
            child: Text(
              "Appliances: Service & Repair",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.03, bottom: 17),
            child: Text(
              "Expert Technicians at your Doorstep in 2 hours",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),

          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.symmetric(horizontal: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 25, childAspectRatio: 1.2),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/ac.jpeg"),
                      SizedBox(height: 12),
                      Text(
                        "Air Conditioner",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Carpenters",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ServicesTile(
                      color: Colors.red[400],
                      text: "Cleaners",
                      image: "assets/images/cleaner.png",
                    ),
                    ServicesTile(
                      color: Colors.deepPurple[400],
                      text: "Electricians",
                      image: "assets/images/electricians.png",
                    ),
                    ServicesTile(
                      color: Colors.indigo,
                      text: "Mechanics",
                      image: "assets/images/mechancis-new.png",
                    ),
                    ServicesTile(
                      color: Colors.yellow[700],
                      text: "Chefs",
                      image: "assets/images/icon-new.png",
                    ),
                    ServicesTile(
                      color: Colors.brown[400],
                      text: "Painters",
                      image: "assets/images/painters.png",
                    ),
                  ],
                ),
              )
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
