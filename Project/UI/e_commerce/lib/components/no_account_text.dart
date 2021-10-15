import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/forgot_password/forgot_pass_screen.dart';
import 'package:e_commerce/Screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account",
          style: TextStyle(
              fontSize: SizeConfig.getProportionateScreenWidth(16)),
        ),

        SizedBox(width: SizeConfig.getProportionateScreenWidth(20)),

        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: SizeConfig.getProportionateScreenWidth(16),
              color: Constants.kPrimaryColor,
              decoration: TextDecoration.underline
            ),
          ),
        )
      ],
    );
  }
}