import 'package:tmapp/FadeAnimation.dart';
import 'package:tmapp/ReusableWidgets/CustomPasswordField.dart';
import 'package:tmapp/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginMain extends StatefulWidget {
  @override
  _LoginMainState createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: FadeAnimation(0.5,Container(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(bottom: 20),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
                    color: primaryblue,
                  ),
//                  decoration: BoxDecoration(
//                      image: DecorationImage(
//                          image: AssetImage('assets/images/background.png'),
//                          fit: BoxFit.fill),
//                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 30,
                          width: 80,
                          height: 100,
                          child: FadeAnimation(1, Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                    AssetImage('assets/images/light-1.png'))),
                          ),
                          )),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.6, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.8, Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 60.0,
                            margin: EdgeInsets.only(top: 50),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logoFullWhite.png')
                              ),
                            ),
                          ),
                        )),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20.0,right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FadeAnimation(1.8, Container(
                      padding: EdgeInsets.only(bottom: 20,top: 50),
                      child: Text(
                        'Sign In To Continue.',
                        style: TextStyle(
                          color: primaryblue,
                          fontSize: 22,
                        ),
                      ),
                    )),
                    FadeAnimation(1.8, Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: primaryblue.withOpacity(0.5),
                                blurRadius: 20.0,
                                offset: Offset(0, 10)
                            )
                          ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(
                                    color: Colors.grey[100]))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Personal Id",
                                  hintStyle: TextStyle(
                                      color: Colors.grey[400])
                              ),
                            ),
                          ),
                          CustomPasswordField(),
                        ],
                      ),
                    )),
                    SizedBox(height: 30,),
                    FadeAnimation(2, InkWell(
                      onTap: (){},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryblue,
                        ),
                        child: Center(
                          child: Text("Login", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),),
                        ),
                      ),
                    )),
                    SizedBox(height: 10,),
                    FadeAnimation(1.5, Text("Forgot Password?",
                      style: TextStyle(
                          color: primaryblue),)),
                  ],
                ),
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
