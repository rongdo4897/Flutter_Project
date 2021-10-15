import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Screens/home/home_screen.dart';
import 'package:e_commerce/Screens/profile/components/body.dart';
import 'package:e_commerce/components/custom_bottom_nav_bar.dart';
import 'package:e_commerce/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String routeName = "/profile_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
      // bottomNavigationBar: CustomBottomNavBar(
      //   selectedMenu: MenuState.profile,
      // ),
    );
  }
}
