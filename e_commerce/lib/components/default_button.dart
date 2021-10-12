import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, 
    required this.text, 
    required this.press, 
    required this.height, 
    required this.width,
    this.radius, 
    this.backgroundColor, 
    this.textColor,
    this.textSize,
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final double height;
  final double width;
  final double? radius;
  final Color? backgroundColor;
  final Color? textColor;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: SizeConfig.getProportionateScreenWidth(height),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0.0)),
          color: backgroundColor ?? Color(0x000000),
        ),
        child: TextButton(
          onPressed: press ,
          child: Text(
            text, 
            style: TextStyle(
              fontSize: SizeConfig.getProportionateScreenWidth(textSize ?? 20),
              color: textColor ?? Color(0xFFFFFF)
            ),
          ),
        ),
      );
  }
}