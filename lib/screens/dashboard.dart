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
    return Scaffold(
      backgroundColor: Color.fromRGBO(43, 43, 43, 1),
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
      bottomNavigationBar: TitledBottomNavigationBar(
        currentIndex: index,
        activeColor: Color.fromRGBO(191, 150, 86, 1),
        inactiveColor: Colors.white,
        onTap: (int selection) {
          setState(() {
            index = selection;
          });
        },
        items: [
          TitledNavigationBarItem(
              icon: Icons.home,
              title: Text("Home"),
              backgroundColor: Colors.black),
          TitledNavigationBarItem(
              icon: Icons.search,
              title: Text("Search"),
              backgroundColor: Colors.black),
          TitledNavigationBarItem(
              icon: Icons.article,
              title: Text("Bookings"),
              backgroundColor: Colors.black),
          TitledNavigationBarItem(
              icon: Icons.menu,
              title: Text("More"),
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
