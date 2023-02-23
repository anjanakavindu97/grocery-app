import 'package:flutter/material.dart';

class UtilFunctions {
  //Navigator push function
  static void navigateTo(BuildContext context, Widget widget) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }

  //Navigator pop function
  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
