import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/sign_up/components/sign_up_form_component.dart';
import 'package:e_commerce/components/socal_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
        
              Text(
                "Register Account",
                textAlign: TextAlign.center,
                style: Constants.headingStyle,
              ),
        
              // 2
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
        
              SizedBox(height: SizeConfig.screenHeight * 0.07),
        
              SignUpFormComponents(),
        
              SizedBox(height: SizeConfig.screenHeight * 0.07),
        
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
        
              SizedBox(height: SizeConfig.getProportionateScreenHeight(20)),
        
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
