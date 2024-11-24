import 'package:flutter/material.dart';

class SizeConfig {
  static const desktopBreakPoint = 1200;
  static const tabletBreakPoint = 800;

  //Use It when you are not building an app for web
  static late double height, width;

  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
