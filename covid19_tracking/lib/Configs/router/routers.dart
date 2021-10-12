import 'package:covid19_tracking/screens/detail/detail_screen.dart';
import 'package:covid19_tracking/screens/home/home_screen.dart';
import 'package:covid19_tracking/screens/map/covid_map_screen.dart';
import 'package:covid19_tracking/screens/tabbar/tabbar_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CovidMapScreen.routeName: (context) => CovidMapScreen(),
  TabbarScreen.routeName: (context) => TabbarScreen(),
};
