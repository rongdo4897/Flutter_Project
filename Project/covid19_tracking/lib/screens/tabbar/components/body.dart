import 'dart:ui';
import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/screens/home/home_screen.dart';
import 'package:covid19_tracking/screens/map/covid_map_screen.dart';
import 'package:covid19_tracking/screens/tabbar/components/tabbar_item.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentTab = 0;
  final List<Widget> screens = [HomeScreen(), CovidMapScreen()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.36))
          ],
        ),
        child: Row(
          children: [
            TabbarItem(
              iconName: "assets/icons/Shop Icon.svg",
              name: "Home",
              color: currentTab == 0 ? Colors.blue : Constants.kTextColor,
              press: () {
                setState(() {
                  currentScreen = HomeScreen();
                  currentTab = 0;
                });
              },
            ),
            TabbarItem(
              iconName: "assets/icons/Bill Icon.svg",
              name: "Map",
              color: currentTab == 1 ? Colors.blue : Constants.kTextColor,
              press: () {
                setState(() {
                  currentScreen = CovidMapScreen();
                  currentTab = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
