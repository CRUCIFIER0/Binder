import 'package:flutter/material.dart';
import 'package:tmapp/productionsupervisor/first.dart';
import 'package:tmapp/productionsupervisor/solvecomplaint.dart';
import 'package:tmapp/productionoperator/firstop.dart';
import 'package:tmapp/assignoperator.dart';
import 'package:tmapp/whoareyou.dart';
import 'package:tmapp/login.dart';
import 'package:tmapp/systemadmin/firstadmin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Who(),
    );
  }
}

