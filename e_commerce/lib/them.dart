import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:flutter/material.dart';

ThemeData them() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarThem(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// nhập text
InputDecorationTheme inputDecorationTheme() {

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    // Vùng viền khi không nhập
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Constants.kTextColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    floatingLabelBehavior:
        FloatingLabelBehavior.always, // Luôn hiển thị label text
    contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: Constants.kTextColor),
    bodyText2: TextStyle(color: Constants.kTextColor),
  );
}

AppBarTheme appBarThem() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0, // Độ cao
      brightness: Brightness.light, // Độ sáng
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
          headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18)));
}
