import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize{
  final bool backIcon;
  final Widget child;
  final bool elevation;

  @override
  final Size preferredSize;

  CustomAppBar({
    this.backIcon = true,
    @required this.child,
    this.elevation = true
  }) : assert(child != null),
        preferredSize = Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backIcon == true ? GestureDetector(
        onTap: (){},
        child: Icon(Icons.arrow_back_ios),
      ) : null ,
      elevation: elevation == true ? 10 : 0,
      title: Center(child: child,),
    );
  }

}