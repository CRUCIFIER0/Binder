import 'package:flutter/material.dart';
import 'package:tmapp/maintainenceoperator/Firstmo.dart';
import 'package:tmapp/maintainencesu/Firstms.dart';
import 'package:tmapp/productionoperator/firstop.dart';
import 'package:tmapp/productionsupervisor/first.dart';
import 'package:tmapp/systemadmin/firstadmin.dart';
class Who extends StatefulWidget {
  @override
  _WhoState createState() => _WhoState();
}

class _WhoState extends State<Who> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Card(
            child: Column(
              children: <Widget>[
                FlatButton(
                  child: Text("Prod Operator"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Firstop()),
                    );
                  },
                ),
                FlatButton(
                  child: Text("Prod Supervisor"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => First()),
                    );
                  },
                ),
                FlatButton(
                  child: Text("Admin"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Firstadmin()),
                    );
                  },
                ),
                FlatButton(
                  child: Text("Main operator"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Firstmo()),
                    );
                  },
                ),
                FlatButton(
                  child: Text("Main super"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Firstms()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
