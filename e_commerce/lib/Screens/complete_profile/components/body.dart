import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/complete_profile/components/complete_profile_form_components.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            
            Text(
              "Complete Profile",
              textAlign: TextAlign.center,
              style: Constants.headingStyle,
            ),
          
            // 2
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
      
            // 3
            SizedBox(height: SizeConfig.screenHeight * 0.05),
      
            //
            CompleteProfileFormComponents(),

            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

            Text(
              "By continuing your confirm that you agree \nwith our Temp and Condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}