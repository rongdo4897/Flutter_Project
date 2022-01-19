import 'package:e_commerce/Screens/Tabbar/tabbar_screen.dart';
import 'package:e_commerce/Screens/cart/cart_screen.dart';
import 'package:e_commerce/Screens/complete_profile/complete_profile_screeb.dart';
import 'package:e_commerce/Screens/details/details_screen.dart';
import 'package:e_commerce/Screens/forgot_password/forgot_pass_screen.dart';
import 'package:e_commerce/Screens/home/home_screen.dart';
import 'package:e_commerce/Screens/login_success/login_success_screen.dart';
import 'package:e_commerce/Screens/otp/otp_screen.dart';
import 'package:e_commerce/Screens/profile/profile_screen.dart';
import 'package:e_commerce/Screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce/Screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce/Screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  TabbarScreen.routeName: (context) => TabbarScreen(),
};