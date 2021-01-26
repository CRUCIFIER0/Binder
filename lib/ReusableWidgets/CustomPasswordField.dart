import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _showPassword = false;
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: (){
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            border: InputBorder.none,
            hintText: "Password",
            hintStyle: TextStyle(
                color: Colors.grey[400])
        ),
        onSubmitted: (val) => _password = val,
        obscureText: !_showPassword,
      ),
    );
  }
}
