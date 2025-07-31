import 'package:flutter/cupertino.dart';

class SizeConfig {
  static const double diskTop = 1300;
  static const double tablet = 800;
  static late double hight, width;

  static inti(context) {
    hight = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
