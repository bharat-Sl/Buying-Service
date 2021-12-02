import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

import 'dashboard/bookings/bookings.dart';
import 'dashboard/home.dart';
import 'dashboard/more/more.dart';
import 'dashboard/search/search.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(252, 208, 202, 1),
            Color.fromRGBO(255, 255, 255, 1)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor: Colors.grey[900],
        ),
        body: [
          Home(),
          Search(),
          BookingScreen(),
          More(),
        ][index],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(252, 207, 202, 1),
                Color.fromRGBO(251, 254, 216, 1)
              ],
            ),
          ),
          child: TitledBottomNavigationBar(
            currentIndex: index,
            activeColor: Colors.black,
            inactiveColor: Color.fromRGBO(191, 150, 86, 1),
            onTap: (int selection) {
              setState(() {
                index = selection;
              });
            },
            items: [
              TitledNavigationBarItem(
                  icon: Icons.home,
                  title: Text("Home"),
                  backgroundColor: Colors.transparent),
              TitledNavigationBarItem(
                  icon: Icons.search,
                  title: Text("Search"),
                  backgroundColor: Colors.transparent),
              TitledNavigationBarItem(
                  icon: Icons.article,
                  title: Text("Bookings"),
                  backgroundColor: Colors.transparent),
              TitledNavigationBarItem(
                  icon: Icons.menu,
                  title: Text("More"),
                  backgroundColor: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }
}
