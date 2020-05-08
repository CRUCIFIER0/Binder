import 'package:flutter/material.dart';
import 'package:tmapp/productionoperator/userprofileop.dart';
import 'package:tmapp/productionoperator/passwordop.dart';

class ResetPassop extends StatefulWidget {
  @override
  _ResetPassState createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPassop> {

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
        title: Center(child: Text('Logo')),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 60, 30, 10),
          child: Form(
            child: Column(

              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Reset Password',
                    style: TextStyle(color: Color(0xFF1467B3), fontSize: 18, fontWeight: FontWeight.w500,fontFamily: "Roboto"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PasswordFieldop(
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
                PasswordFieldop(
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
                PasswordFieldop(
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
