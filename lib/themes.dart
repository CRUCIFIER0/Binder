import 'package:flutter/material.dart';

Color primaryblue = Color(0xFF1467B3);
Color fadeblue = Color.fromRGBO(20, 103, 179, 0.05);
String appBarTitle="";

class getAppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(appBarTitle);
  }
}

TextStyle blueBoldLargeStyle = TextStyle(
    fontFamily: 'Roboto',
    color: primaryblue,
    fontSize: 18,
    fontWeight: FontWeight.w500
);

TextStyle blueBoldNormaltyle = TextStyle(
    fontFamily: 'Roboto',
    color: primaryblue,
    fontSize: 16,
    fontWeight: FontWeight.w500
);

TextStyle blueSmallStyle = TextStyle(
    fontFamily: 'Roboto',
    color: primaryblue,
    fontSize: 14,
    fontWeight: FontWeight.w400
);