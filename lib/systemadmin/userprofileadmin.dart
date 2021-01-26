import 'package:flutter/material.dart';
import 'package:tmapp/systemadmin/firstadmin.dart';
import 'package:tmapp/systemadmin/homepageadmin.dart';
import 'package:tmapp/systemadmin/resetPasswordAdmin.dart';

class UserProfileAdmin extends StatefulWidget {
  @override
  _UserProfileAdminState createState() => _UserProfileAdminState();
}

class _UserProfileAdminState extends State<UserProfileAdmin> {
  String _email;
  Future<bool> _onBackPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Firstadmin()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1467B3),
          title: Text("User Profile"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: "Personal No.",
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
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: "Name",
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
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: "Designation",
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
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
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
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: "Email ID",
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Color.fromRGBO(93, 153, 252, 100)), //5d99fc
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                      validator: (input) =>
                          !input.contains('@') ? 'Not a valid email' : null,
                      onSaved: (input) => _email = input,
                    ),
                    SizedBox(
                      height: 30,
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
                                builder: (context) => ResetPasswordAdmin()),
                          );
                        },
                        child: Text(
                          "Reset Password",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Color(0xFF1467B3),
                      thickness: 1.3,
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
                          /***/
                        },
                        borderSide: BorderSide(color: Color(0xFF1467B3)),
                        child: Text(
                          "Log Out",
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
