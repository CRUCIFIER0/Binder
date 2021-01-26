import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:tmapp/systemadmin/deleteemployee.dart';

class InvalidPersonalNo extends StatefulWidget {
  @override
  _InvalidPersonalNoState createState() => _InvalidPersonalNoState();
}

class _InvalidPersonalNoState extends State<InvalidPersonalNo> {
  Future<bool> _onbackpressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DeleteEmployee()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onbackpressed,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides leading widget
          title: Image.asset('assests/images/LogoDeleteEmp.png',
              fit: BoxFit.cover, height: 28),
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Personal No.",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 20.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(255, 0, 0, 100)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                    ),
                    Hero(
                      tag: "1",
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Image.asset(
                                  'assests/images/InvalidPersonalNo.png',
                                  height: 55,
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Invalid Personal No",
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF1467B3)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 400,
                      height: 45,
                      child: OutlineButton(
                        textColor: Color(0xFF1666f0),
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeleteEmployee()),
                          );
                        },
                        borderSide: BorderSide(color: Color(0xFF1467B3)),
                        child: Text(
                          "Go back",
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF1467B3)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
