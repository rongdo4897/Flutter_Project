import 'package:e_commerce/Screens/profile/profile_screen.dart';
import 'package:e_commerce/Screens/router/routers.dart';
import 'package:e_commerce/Screens/splash/splash_screen.dart';
import 'package:e_commerce/them.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: them(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
