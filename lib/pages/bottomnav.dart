import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:trend_trove/pages/home.dart';
import 'package:trend_trove/pages/order.dart';
import 'package:trend_trove/pages/profile.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
//! --------------------------------------------------
  late List<Widget> pages;

  late Home homePage;
  late Order order;
  late Profile profile;
  int currentTabIndex = 0;
//! --------------------------------------------------
//* --------------------------------------------------
  @override
  void initState() {
    homePage = Home();
    order = Order();
    profile = Profile();
    pages = [homePage, order, profile];
    super.initState();
  }
//* --------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Color(0xfff2f2f2),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          Icon(Icons.person_outlined, color: Colors.white)
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
