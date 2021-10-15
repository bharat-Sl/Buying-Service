import 'package:buying_service/components/selection_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SelectionPage extends StatefulWidget {
  final String serviceName;

  const SelectionPage({Key key, this.serviceName = "Services"})
      : super(key: key);
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(191, 150, 86, 1),
      //   elevation: 10,
      //   shadowColor: Color.fromRGBO(241, 190, 126, 1),
      //   title: Text(
      //     widget.serviceName,
      //     style: TextStyle(fontSize: 22),
      //   ),
      //   leading: InkWell(
      //       onTap: () {
      //         Navigator.of(context).pop();
      //       },
      //       child: Icon(Icons.arrow_back)),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: width,
            child: Stack(
              children: [
                Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "https://cdn.concreteplayground.com/content/uploads/2020/07/urbancompany-suppplied4.jpg",
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: 4,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.grey, activeColor: Colors.white),
                  ),
                  control: SwiperControl(
                      color: Colors.white,
                      iconNext: Icons.no_encryption,
                      size: 0),

                  // viewportFraction: 0.8,
                  scale: 0.9,
                  autoplay: true,
                  autoplayDelay: 3000,
                  curve: Curves.easeInOutQuad,
                ),
                Positioned(
                  top: 26,
                  left: 8,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
            child: Text(
              "${widget.serviceName}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 0,
            padding: EdgeInsets.symmetric(horizontal: 0),
            shrinkWrap: true,
            childAspectRatio: (MediaQuery.of(context).size.width / 3) /
                (MediaQuery.of(context).size.width / 3 + 50),
            children: [
              SelectionTile(
                text: "Painters",
                image: "assets/images/painters.png",
              ),
              SelectionTile(
                text: "Painters",
                image: "assets/images/painters.png",
              ),
              SelectionTile(
                text: "Painters",
                image: "assets/images/painters.png",
              ),
              SelectionTile(
                text: "Painters",
                image: "assets/images/painters.png",
              ),
              SelectionTile(
                text: "Painters",
                image: "assets/images/painters.png",
              ),
              SelectionTile(
                text: "Looking for something else?",
                image: "assets/images/painters.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
