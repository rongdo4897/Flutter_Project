import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class RoudedIconBtn extends StatelessWidget {
  const RoudedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius:
          BorderRadius.circular(SizeConfig.getProportionateScreenHeight(32)),
      onTap: press,
      child: Container(
        alignment: Alignment.center,
          // padding: EdgeInsets.symmetric(
          //     horizontal: SizeConfig.getProportionateScreenHeight(13),
          //     vertical: SizeConfig.getProportionateScreenWidth(6)
          //     ),
          width: SizeConfig.getProportionateScreenWidth(40),
          height: SizeConfig.getProportionateScreenHeight(40),
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Icon(iconData)),
    );
  }
}
