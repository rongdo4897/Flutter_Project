import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:flutter/material.dart';

class AppSquareButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  double radius;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool isIcon;

  AppSquareButton({
    Key? key,
    this.isIcon = false,
    this.text,
    this.icon,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
    this.radius = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor
      ),
      child: isIcon == false ? Center(child: AppText(text: text!, color: color)) : Center(child: Icon(icon!, color: color)),
    );
  }
}