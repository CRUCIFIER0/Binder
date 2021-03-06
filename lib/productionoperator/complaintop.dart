import 'package:flutter/material.dart';
import 'package:tmapp/productionoperator/firstop.dart';
import 'package:tmapp/productionsupervisor/listcomp.dart';

class ComaplintDetails extends StatefulWidget {
  @override
  _ComaplintDetailsState createState() => _ComaplintDetailsState();
}
enum SingingCharacter { lafayette, jefferson }
class _ComaplintDetailsState extends State<ComaplintDetails> {
  SingingCharacter  _radioValue1= SingingCharacter.lafayette;
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
                MaterialPageRoute(builder: (context) => Firstop()),
              );
            },
          ),
          backgroundColor: Color(0xFF1467B3),

        ),

        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Card(
                  margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  //alignment: Alignment.center,
                  child:Stack(

                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(20.0),
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
                          margin: EdgeInsets.only(top: 340,left: 20,bottom: 20),
                          child: Text( "Date ",style: TextStyle(fontFamily: 'Roboto', color: Color(0x801467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 340,right: 20,bottom: 20),
                          alignment: Alignment.topRight,
                          child: Text( "Department ",style: TextStyle(fontFamily: 'Roboto', color: Color(0x801467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 370,left: 60,bottom: 20),
                          alignment: Alignment.bottomLeft,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              ////////
                              print('Edit');
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.edit,color: Color(0xFF1467B3)),
                                Text( "  Edit ",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 14,fontWeight: FontWeight.w500)),

                              ],
                            ),

                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 370,left: 220,bottom: 20),
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              ////////
                              print('Delete');
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.delete,color: Color(0xFF1467B3)),
                                Text( "  Delete ",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 14,fontWeight: FontWeight.w500)),

                              ],
                            ),

                          ),
                        ),

                      ]  ),

                ),
                Card(
                  margin: EdgeInsets.only(left: 20,right: 20,top:10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  child: Column(

                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 20,left: 20),
                        child: Text("Verify",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 18,fontWeight: FontWeight.w500)),
                      ),
                      Row(
                        children: <Widget>[
                          new Radio(
                            value: 0,
                            groupValue: _radioValue1,
                            //onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            'Solved',
                            style: new TextStyle(fontFamily: 'Roboto',fontSize: 16.0),
                          ),
                          new Radio(
                            value: 1,
                            groupValue: _radioValue1,
                            //onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            'Not Solved',
                            style: new TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        //padding:EdgeInsets.only(top: 400,left:20,right: 20) ,
                        child:new SizedBox(
                          //width: double.infinity,
                          child: new RaisedButton(
                            child: new Text("Verify",style: TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 16),textAlign: TextAlign.center,),
                            color: Color(0xFF1467B3),
                            onPressed:() {/** */} ,
                          ),
                        ),

                      ),
                      SizedBox(height: 10,)


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
