import 'dart:ui';

import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Screens/Tabbar/Components/item.dart';
import 'package:e_commerce/Screens/home/home_screen.dart';
import 'package:e_commerce/Screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentTab = 0;
  final List<Widget> screens = [HomeScreen(), ProfileScreen()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currenScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currenScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: SizedBox(
        height: window.viewPadding.bottom > 0
            ? TabbarConstant.tabbarHeight + 45
            : TabbarConstant.tabbarHeight + 25,
        child: Stack(
          children: <Widget>[
            Container(
              height: TabbarConstant.tabbarHeight,
              width: double.infinity,
              margin: EdgeInsets.all(TabbarConstant.margin),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Constants.kPrimaryLightColor,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        offset: const Offset(0, 3),
                        color: Colors.black.withAlpha(20))
                  ]),
              child: Row(
                children: [
                  Item(
                    icon: "assets/icons/Shop Icon.svg",
                    text: TabbarConstant.home,
                    activeColor:
                        currentTab == 0 ? Colors.white : Constants.kPrimaryColor,
                    press: () {
                      setState(() {
                        currenScreen = HomeScreen();
                        currentTab = 0;
                      });
                    },
                    activeBackgroundColor: currentTab == 0
                        ? Constants.kPrimaryColor
                        : Colors.transparent,
                  ),
                  //
                  Item(
                    icon: "assets/icons/User Icon.svg",
                    text: TabbarConstant.profile,
                    activeColor:
                        currentTab == 1 ? Colors.white : Constants.kPrimaryColor,
                    press: () {
                      setState(() {
                        currenScreen = ProfileScreen();
                        currentTab = 1;
                      });
                    },
                    activeBackgroundColor: currentTab == 1
                        ? Constants.kPrimaryColor
                        : Colors.transparent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
