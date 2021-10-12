import 'package:covid19_tracking/screens/tabbar/components/body.dart';
import 'package:flutter/material.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({ Key? key }) : super(key: key);
  static String routeName = "/tabbar_screen";

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}