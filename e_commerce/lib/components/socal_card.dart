import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    required this.iconName,
    required this.press,
  }) : super(key: key);

  final String iconName;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(SizeConfig.getProportionateScreenWidth(12)),
        height: SizeConfig.getProportionateScreenHeight(40),
        width: SizeConfig.getProportionateScreenWidth(40),
        decoration:
            BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(iconName),
      ),
    );
  }
}