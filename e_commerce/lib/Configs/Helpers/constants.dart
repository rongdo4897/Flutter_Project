import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class Constants {
  // color
  static Color kPrimaryColor = Color(0xFFFF7643);
  static Color kPrimaryLightColor = Color(0xFFFFECDF);
  static Color kSecondaryColor = Color(0xFF979797);
  static Color kTextColor = Color(0xFF757575);

  // gradient color
  static LinearGradient kPrimaryGradientColor = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);

  // Thời lượng animation
  static Duration kAnimationDuration = Duration(milliseconds: 200);

  // form error
  static final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static String kEmailNullError = "Please enter your email";
  static String kValidateEmailError = "Please enter valid email";
  static String kPasswordNullError = "Please enter your password";
  static String kShortPasswordError = "Password is to short";
  static String kMatchPasswordError = "Password don't match";
  static String kNameNullError = "Please enter your name";
  static String kPhoneNumberNullError = "Please enter your phone number";
  static String kAddressNullError = "Please enter your address";

  // text style
  static final TextStyle headingStyle = TextStyle(
    color: Colors.black,
    fontSize: SizeConfig.getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
  );

  // otp input
  static final InputDecoration otpInputDecoration = InputDecoration(
      contentPadding: EdgeInsets.symmetric(
          vertical: SizeConfig.getProportionateScreenWidth(15)),
      enabledBorder: outlineInputBoder(),
      focusedBorder: outlineInputBoder(),
      border: outlineInputBoder());

  static OutlineInputBorder outlineInputBoder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Constants.kTextColor));
  }
}

// tabbar
class TabbarConstant {
  static const home = 'Home';
  // static const plan = 'Plan';
  static const profile = 'Profile';
  static const buttonHeight = 50.0;
  static const tabbarHeight = 55.0;
  static const numberOfItem = 2.0;
  static const margin = 15.0;
}
