import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:tmapp/maintainenceoperator/listmo.dart';
import 'package:tmapp/maintainenceoperator/userprofilemo.dart';

class Firstmo extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<Firstmo> {
  int _ci=0;
  final _page=[
    HomePagemo(),
    Profilemo(),
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
          TabData(iconData: Icons.insert_comment, title: "Complaints", ),
          TabData(iconData: Icons.person, title: "Profile")
        ],
        onTabChangedListener: (int index){
          setState(() {
            _ci=index;
          });
        },
      ),
    );
  }
}