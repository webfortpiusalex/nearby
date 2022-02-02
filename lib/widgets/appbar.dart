import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nearby/theme/colors.dart';

class appbar extends StatefulWidget {
  const appbar({Key? key, IconButton? leading, shape, Color? foregroundColor, Color? backgroundColor}) : super(key: key);

  @override
  _appbarState createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(

      leading: IconButton(
        alignment : Alignment.topRight,
        onPressed: (){},
        icon: Icon(Icons.menu, size: 30),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      foregroundColor :  Colors.white,
      backgroundColor :  CustomColors.lightblue,
    );
  }
}
