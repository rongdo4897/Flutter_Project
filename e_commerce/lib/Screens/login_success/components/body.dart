import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/Tabbar/tabbar_screen.dart';
import 'package:e_commerce/Screens/home/home_screen.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),

        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),

        SizedBox(height: SizeConfig.screenHeight * 0.08),

        Text(
          "Login Success",
          style: TextStyle(
              fontSize: SizeConfig.getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),

        Spacer(),

        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            width: double.infinity,
            height: 56,
            radius: 20,
            backgroundColor: Constants.kPrimaryColor,
            textColor: Colors.white,
            textSize: 20,
            text: "Continue",
            press: () {
              Navigator.pushNamed(context, TabbarScreen.routeName);
            },
          ),
        ),

        Spacer()
      ],
    );
  }
}
