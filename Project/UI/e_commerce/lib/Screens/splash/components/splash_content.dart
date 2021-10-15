import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, required this.text, required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 1
        Spacer(),

        // 2
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: SizeConfig.getProportionateScreenWidth(36),
            color: Constants.kPrimaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
      
        // 3
        Text(text, textAlign: TextAlign.center,),

        // 4
        Spacer(flex: 2,),

        // 5
        Image.asset(
          image,
          height: SizeConfig.getProportionateScreenHeight(265),
          width: SizeConfig.getProportionateScreenWidth(235),
        )
      ],
    );
  }
}