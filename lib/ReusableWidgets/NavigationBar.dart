import 'package:flutter/material.dart';

import '../themes.dart';
import 'CustomBottomNavigationBar.dart';


class OperatorNavigationBar extends StatefulWidget {
  @override
  _OperatorNavigationBarState createState() => _OperatorNavigationBarState();
}

class _OperatorNavigationBarState extends State<OperatorNavigationBar> {
  int currentIndex = 0;
  Color _color0 = Colors.white, _color1 = primaryblue, _color2 = primaryblue, _color3 = primaryblue;

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      showElevation: true,
      itemCornerRadius: 10,
      curve: Curves.easeInBack,
      onItemSelected: (index) => setState(() {
        currentIndex = index;
        if(index == 0){
          appBarTitle = "Complaints";
          _color0 = Colors.white;
          _color1 = primaryblue;
          _color2 = primaryblue;
          _color3 = primaryblue;
        }
        else if(index == 1){
          appBarTitle = "Profile";
          print(getAppBarTitle());
          _color1 = Colors.white;
          _color0 = primaryblue;
          _color2 = primaryblue;
          _color3 = primaryblue;
        }
      }),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text('Complaints'),
          activeColor: _color0,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Profile'),
          activeColor: _color3,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class SupervisorNavigationBar extends StatefulWidget {
  @override
  _SupervisorNavigationBarState createState() => _SupervisorNavigationBarState();
}

class _SupervisorNavigationBarState extends State<SupervisorNavigationBar> {
  int currentIndex = 0;
  Color _color0 = Colors.white, _color1 = primaryblue, _color2 = primaryblue, _color3 = primaryblue;


  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      showElevation: true,
      itemCornerRadius: 10,
      curve: Curves.easeInBack,
      onItemSelected: (index) => setState(() {
        currentIndex = index;
        if(index == 0){
          appBarTitle = "Complaints";
          _color0 = Colors.white;
          _color1 = primaryblue;
          _color2 = primaryblue;
          _color3 = primaryblue;
        }
        else if(index == 1){
          appBarTitle = "Department";
          _color1 = Colors.white;
          _color0 = primaryblue;
          _color2 = primaryblue;
          _color3 = primaryblue;
        }
        else if(index == 2){
          appBarTitle = "Statistics";
          _color2 = Colors.white;
          _color1 = primaryblue;
          _color0 = primaryblue;
          _color3 = primaryblue;
        }
        else if(index == 3){
          appBarTitle = "Profile";
          _color3 = Colors.white;
          _color1 = primaryblue;
          _color2 = primaryblue;
          _color0 = primaryblue;
        }
      }),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text('Complaints'),
          activeColor: _color0,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.account_balance),
          title: Text('Department'),
          activeColor: _color1,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.assessment),
          title: Text('Statistics'),
          activeColor: _color2,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Profile'),
          activeColor: _color3,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
