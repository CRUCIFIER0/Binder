import 'package:flutter/material.dart';
import 'package:tmapp/systemadmin/firstadmin.dart';
import 'package:tmapp/systemadmin/passwordFieldAdmin.dart';
import 'dart:io';
import 'package:tmapp/systemadmin/userprofileadmin.dart';

class ResetPasswordAdmin extends StatefulWidget {
  @override
  _ResetPasswordAdminState createState() => _ResetPasswordAdminState();
}

class _ResetPasswordAdminState extends State<ResetPasswordAdmin> {
  String _password;
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
  final _passwordFieldKey1 = GlobalKey<FormFieldState<String>>();
  final _passwordFieldKey2 = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF1467B3),
        title: Text("Reset Password"),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 60, 30, 10),
          child: Form(
            child: Column(
              children: <Widget>[
                PasswordFieldAdmin(
                  fieldKey: _passwordFieldKey,
                  hintText: 'Current Password',
                  onFieldSubmitted: (String value) {
                    setState(() {
                      this._password = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                PasswordFieldAdmin(
                  fieldKey: _passwordFieldKey1,
                  hintText: 'Enter New Password',
                  onFieldSubmitted: (String value) {
                    setState(() {
                      this._password = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                PasswordFieldAdmin(
                  fieldKey: _passwordFieldKey2,
                  hintText: 'Enter New Password',
                  onFieldSubmitted: (String value) {
                    setState(() {
                      this._password = value;
                    });
                  },
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
                      /*...*/
                    },
                    child: Text(
                      "Confirm",
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
                      child: Text(
                        "Cancel",
                        style:
                            TextStyle(fontSize: 15.0, color: Color(0xFF1467B3)),
                      ),
                      color: Color(0xFF1467B3)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
