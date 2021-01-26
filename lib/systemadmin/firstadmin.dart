import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:tmapp/systemadmin/homepageadmin.dart';
import 'package:tmapp/systemadmin/userprofileadmin.dart';

class Firstadmin extends StatefulWidget {
  @override
  _FirstadminState createState() => _FirstadminState();
}

class _FirstadminState extends State<Firstadmin> {
  int _ci = 0;
  final _page = [
    HomePageAdmin(),
    UserProfileAdmin(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_ci],
      bottomNavigationBar: FancyBottomNavigation(
        //currentIndex: _ci,
        circleColor: Color(0xFF1465B0),
        inactiveIconColor: Color(0xFF1465B0),
        tabs: [
          TabData(
            iconData: Icons.featured_play_list,
            title: "Employee",
          ),
          TabData(iconData: Icons.person, title: "Profile")
        ],
        onTabChangedListener: (int index) {
          setState(() {
            _ci = index;
          });
        },
      ),
    );
  }
}
