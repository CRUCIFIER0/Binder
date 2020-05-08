import 'package:flutter/material.dart';
import 'package:tmapp/productionsupervisor/first.dart';
import 'package:tmapp/productionsupervisor/listcomp.dart';

class ComaplintDetails extends StatefulWidget {
  @override
  _ComaplintDetailsState createState() => _ComaplintDetailsState();
}

class _ComaplintDetailsState extends State<ComaplintDetails> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Color(0xFF1467B3),
        appBar: AppBar(

          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => First()),
              );
            },
          ),
          title: Text("Logo",style: TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 30)),
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),

        ),


        body:
        Card(
            margin: EdgeInsets.only(top: 100,left: 20,right: 20,bottom: 130),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            //alignment: Alignment.center,
              child:Stack(

                  children: <Widget>[
                    Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(20.0),
                    decoration:BoxDecoration(color: Colors.white),
                    child: Text("Complaint No.",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 18,fontWeight: FontWeight.w500)),
                     ),

                    Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 20,right: 20),
                        child: Icon(Icons.brightness_1,color: Color(0xFFFF5656),)
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 21  ,top: 50  ),
                      child: Text("Machine No.",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 14)),
                    ),
                    Container(
                      padding:EdgeInsets.only(top: 75,left: 23) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 8),
                          Text("Personal No. :",style: TextStyle(fontFamily: 'Roboto', color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Line No. :",style: TextStyle(fontFamily: 'Roboto', color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Machine No. :",style: TextStyle(fontFamily: 'Roboto', color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Issue :",style: TextStyle(fontFamily: 'Roboto', color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Status:",style: TextStyle(fontFamily: 'Roboto', color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Raised by :",style: TextStyle(fontFamily: 'Roboto', color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Time :",style: TextStyle(fontFamily: 'Roboto', color:Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Assigned to :",style: TextStyle(fontFamily: 'Roboto', color:Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Assigned by :",style: TextStyle(fontFamily: 'Roboto', color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),
                          SizedBox(height: 8),
                          Text("Description :",style: TextStyle(fontFamily: 'Roboto', color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 14),textAlign: TextAlign.left,),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 340,left: 20),
                      child: Text( "Date ",style: TextStyle(fontFamily: 'Roboto', color: Color(0x801467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 340,right: 20),
                      alignment: Alignment.topRight,
                      child: Text( "Department ",style: TextStyle(fontFamily: 'Roboto', color: Color(0x801467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                    ),
                  ]  ),

            )),
    );
  }
}
