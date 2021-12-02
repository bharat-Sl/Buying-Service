import 'package:buying_service/components/category_tile.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Search",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              letterSpacing: -1,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 15,
          ),
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
                  "Home cleaning...",
                  style: TextStyle(color: Colors.black.withOpacity(0.9)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 10,
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
                  CategoryTile(
                    color: Colors.green[400],
                    text: "Plumbers",
                  ),
                  CategoryTile(
                    color: Colors.blueGrey[300],
                    text: "Photographers",
                  ),
                  CategoryTile(
                    color: Colors.blue[400],
                    text: "Carpenters",
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
