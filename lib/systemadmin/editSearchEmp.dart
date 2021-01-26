import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmapp/systemadmin/editEmpProfile.dart';
import 'package:tmapp/systemadmin/firstadmin.dart';
import 'package:tmapp/systemadmin/firstadmin.dart';
import 'dart:io';

import 'package:tmapp/systemadmin/homepageadmin.dart';

class EditSearchEmp extends StatefulWidget {
  @override
  _EditSearchEmpState createState() => _EditSearchEmpState();
}

class _EditSearchEmpState extends State<EditSearchEmp> {
  Future<bool> _onbackpressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Firstadmin()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onbackpressed,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides leading widget
          title: Text("Edit an employee",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Personal No.",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(93, 153, 252, 100)),
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
                        margin: EdgeInsets.all(10),
                        child: Card(
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              /**/
                            },
                            child: Container(
                              height: 250,
                              margin:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                //padding: EdgeInsets.only(left: 5, top: 10),
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Name ",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF1467B3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Personal No. ",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF1467B3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Block No. ",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF1467B3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Department ",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF1467B3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Designation ",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF1467B3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Phone Number ",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF1467B3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Email ID ",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF1467B3),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 45,
                      child: FlatButton(
                        color: Color(0xFF1467B3),
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditEmpProfile()),
                          );
                        },
                        child: Text(
                          "Edit",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                                builder: (context) => Firstadmin()),
                          );
                        },
                        borderSide: BorderSide(color: Color(0xFF1467B3)),
                        child: Text(
                          "Cancel",
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
