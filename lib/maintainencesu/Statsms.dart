import 'package:flutter/material.dart';
import 'package:tmapp/productionsupervisor/first.dart';
class Statms extends StatefulWidget {
  @override
  _StatState createState() => _StatState();
}

class _StatState extends State<Statms> {
  Future<bool> _onBackPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => First()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),
          title: Image.asset('Logo/LogoWhite/logoFullWhite.png', fit: BoxFit.cover,height: 28),
        ),

      ),
    );
  }
}

