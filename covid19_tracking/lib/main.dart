import 'package:covid19_tracking/Configs/router/routers.dart';
import 'package:covid19_tracking/screens/home/home_screen.dart';
import 'package:covid19_tracking/screens/map/covid_map_screen.dart';
import 'package:covid19_tracking/screens/tabbar/tabbar_screen.dart';
import 'package:covid19_tracking/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: them(),
      initialRoute: TabbarScreen.routeName,
      routes: routes,
    );
  }
}
