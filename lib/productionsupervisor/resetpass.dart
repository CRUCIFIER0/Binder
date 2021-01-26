import 'package:flutter/material.dart';
import 'package:tmapp/productionsupervisor/userprofile.dart';
import 'package:tmapp/productionsupervisor/password.dart';

class ResetPass extends StatefulWidget {
  @override
  _ResetPassState createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {

  goBackToPreviousScreen(BuildContext context){

    Navigator.pop(context);

  }
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
        centerTitle: true,
        title: Text("Reset Password"),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 60, 30, 10),
          child: Form(
            child: Column(

              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                PasswordField(
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
                PasswordField(
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
                PasswordField(
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
                      goBackToPreviousScreen(context);
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(fontSize: 15.0,color: Color(0xFF1467B3)),
                    ),
                      color: Color(0xFF1467B3)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
