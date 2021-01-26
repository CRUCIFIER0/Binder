import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:tmapp/productionsupervisor/addcomplaint.dart';
import 'package:tmapp/productionsupervisor/complaint.dart';

final routeObserver = RouteObserver<PageRoute>();
final duration = const Duration(milliseconds: 300);


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RouteAware {

  GlobalKey _fabKey = GlobalKey();
  bool _fabVisible = true;

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  dispose() {
    super.dispose();
    routeObserver.unsubscribe(this);
  }

  @override
  didPopNext() {
    // Show back the FAB on transition back ended
    Timer(duration, () {
      setState(() => _fabVisible = true);
    });
  }
  Future<bool> _onbackpressed(){
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit the App?'),
        actions: <Widget>[
          OutlineButton(
            child: Text('Yes'),
            onPressed: ()=> exit(0),
          ),
          OutlineButton(
            child: Text('No'),
            onPressed: ()=> Navigator.pop(context,false),
          )
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onbackpressed,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides leading widget
          title: Image.asset('Logo/LogoWhite/logoFullWhite.png', fit: BoxFit.cover,height: 28),
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            //alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20.0),
                child: Text("My Complaints",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 18,fontWeight: FontWeight.w500)),
              ),
              Expanded(child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context,position){
                  return
                    Card(
                      margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                         Navigator.push(
                            context,
                           MaterialPageRoute(builder: (context) => ComaplintDetails()),
                          );
                          print('Card tapped.');
                        },
                        child:  Container(
                          height: 100,
                          margin: EdgeInsets.only(top: 10,left:10,right:10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),

                          child: Stack(

                            children: <Widget>[Container(
                              margin: EdgeInsets.only(top: 5,left: 5),
                              child: Text("Title of complaint ",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 16,fontWeight: FontWeight.w500) ),

                            ),
                              Container(
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(top: 5,right: 5),
                                  child: Icon(Icons.brightness_1,color: Color(0xFFFF5656),)
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 25,left: 5),
                                child: Text( "Machine No. ",style: TextStyle(fontFamily: 'Roboto', color: Color(0xb31467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 80,left: 5),
                                child: Text( "Date ",style: TextStyle(fontFamily: 'Roboto', color: Color(0x801467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 80,left: 5),
                                alignment: Alignment.topRight,
                                child: Text( "Department ",style: TextStyle(fontFamily: 'Roboto', color: Color(0x801467b3), fontSize: 14,fontWeight: FontWeight.w500)),
                              ),

                            ],
                          ),

                        ),
                      ),


                    );
                },

              ) ,),
            ],
          ),
        ),

        floatingActionButton: Visibility(
          visible: _fabVisible,
          child: _buildFAB(context, key: _fabKey),
        ),
      ),
    );
  }

  Widget _buildFAB(context, {key}) => FloatingActionButton(
    elevation: 0,
    backgroundColor: Color(0xFF1467B3),
    key: key,
    onPressed: () => _onFabTap(context),
    child: Icon(Icons.add),
  );

  _onFabTap(BuildContext context) {

    // Hide the FAB on transition start
    setState(() => _fabVisible = false);

    final RenderBox fabRenderBox = _fabKey.currentContext.findRenderObject();
    final fabSize = fabRenderBox.size;
    final fabOffset = fabRenderBox.localToGlobal(Offset.zero);

    Navigator.of(context).push(PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) =>
          SearchPage(),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
          _buildTransition(child, animation, fabSize, fabOffset),
    ));
  }

  Widget _buildTransition(
      Widget page,
      Animation<double> animation,
      Size fabSize,
      Offset fabOffset,
      ) {
    if (animation.value == 1) return page;

    final borderTween = BorderRadiusTween(
      begin: BorderRadius.circular(fabSize.width / 2),
      end: BorderRadius.circular(0.0),
    );
    final sizeTween = SizeTween(
      begin: fabSize,
      end: MediaQuery.of(context).size,
    );
    final offsetTween = Tween<Offset>(
      begin: fabOffset,
      end: Offset.zero,
    );

    final easeInAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeIn,
    );
    final easeAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeOut,
    );

    final radius = borderTween.evaluate(easeInAnimation);
    final offset = offsetTween.evaluate(animation);
    final size = sizeTween.evaluate(easeInAnimation);

    final transitionFab = Opacity(
      opacity: 1 - easeAnimation.value,
      child: _buildFAB(context),
    );

    Widget positionedClippedChild(Widget child) => Positioned(
        width: size.width,
        height: size.height,
        left: offset.dx,
        top: offset.dy,
        child: ClipRRect(
          borderRadius: radius,
          child: child,
        ));

    return Stack(
      children: [
        positionedClippedChild(page),
        positionedClippedChild(transitionFab),
      ],
    );
  }
}




