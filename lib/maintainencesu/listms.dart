import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:tmapp/maintainencesu/assignoperator.dart';

class HomePagems extends StatefulWidget {
  @override
  _HomePagemoState createState() => _HomePagemoState();
}

class _HomePagemoState extends State<HomePagems> {
  Future<bool> _onbackpressed(){
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: new Text('Are you sure?'),
          content: new Text('Do you want to exit the App?'),
          actions: <Widget>[
            OutlineButton(
              child: Text('Yes'),
              onPressed: ()=> exit(0),
            ),
            OutlineButton(
              child: Text('No'),
              onPressed: ()=> Navigator.pop(context,false),
            )
          ],
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onbackpressed,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides leading widget
          title: Image.asset('Logo/LogoWhite/logoFullWhite.png', fit: BoxFit.cover,height: 28),
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            //alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20.0),
                child: Text("My Complaints",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 18,fontWeight: FontWeight.w500)),
              ),
              Expanded(child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context,position){
                  return
                    Card(
                      margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AssignOperator()),
                          );
                          print('Card tapped.');
                        },
                        child:  Container(
                          height: 100,
                          margin: EdgeInsets.only(top: 10,left:10,right:10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),

                          child: Stack(

                            children: <Widget>[Container(
                              margin: EdgeInsets.only(top: 5,left: 5),
                              child: Text("Title of complaint ",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 16,fontWeight: FontWeight.w500) ),

                            ),
                              Container(
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(top: 5,right: 5),
                                  child: Icon(Icons.brightness_1,color: Color(0xFFFF5656),)
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 25,left: 5),
                                child: Text( "Machine No. ",style: TextStyle(fontFamily: 'Roboto', color: Color(0xb31467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 80,left: 5),
                                child: Text( "Date ",style: TextStyle(fontFamily: 'Roboto', color: Color(0x801467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 80,left: 5),
                                alignment: Alignment.topRight,
                                child: Text( "Department ",style: TextStyle(fontFamily: 'Roboto', color: Color(0x801467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                              ),

                            ],
                          ),

                        ),
                      ),


                    );
                },

              ) ,),
            ],
          ),
        ),

      ),
    );
  }
}


