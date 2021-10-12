import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key, required this.svgIconName,
  }) : super(key: key);

  final String svgIconName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0, 
        SizeConfig.getProportionateScreenWidth(20), 
        SizeConfig.getProportionateScreenWidth(20), 
        SizeConfig.getProportionateScreenWidth(20)
      ),
      child: SvgPicture.asset(
        svgIconName,
        height: SizeConfig.getProportionateScreenWidth(20),
      ),
    );
  }
}