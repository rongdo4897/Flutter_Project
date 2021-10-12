import 'package:flutter/material.dart';

class Constants {
  // color
  static Color kTitleColor = Colors.black;
  static Color kCriticalColor = Color(0xFFF1C40F);
  static Color kDeathColor = Colors.red;
  static Color kRecoveredColor = Colors.green;
  static Color kTextColor = Color(0xFF757575);
  static Color kViewColorDefault = Color(0xFFF2F2F2).withOpacity(0.5);

  // Thời lượng animation
  static Duration kAnimationDuration = Duration(milliseconds: 200);
}

// tabbar
class TabbarConstant {
  static const home = 'Home';
  // static const plan = 'Plan';
  static const map = 'CovidMap';
  static const buttonHeight = 50.0;
  static const tabbarHeight = 55.0;
  static const numberOfItem = 2.0;
  static const margin = 15.0;
}
