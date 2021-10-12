import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/sign_in/components/sign_from_component.dart';
import 'package:e_commerce/components/no_account_text.dart';
import 'package:e_commerce/components/socal_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              // 1
              Text(
                "Welcome Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),

              // 2
              Text(
                "Sign in with your email and password \n or continue with social media",
                textAlign: TextAlign.center,
              ),

              // 3
              SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

              // 5
              SignFormComponents(),

              // 6
              Spacer(),

              // 7
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocalCard(
                    iconName: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocalCard(
                    iconName: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocalCard(
                    iconName: "assets/icons/twitter.svg",
                    press: () {},
                  )
                ],
              ),

              // 8
              SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

              // 9
              NoAccountText(),

              // 10
              SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
            ],
          ),
        ),
      ),
    );
  }
}
