import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  final String text;
  final double size;

  const TextDescription({
    Key? key,
    required this.text,
    this.size = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: AppText(
        text: text,
        color: ColorHelpers.textColor2,
        size: size,
      ),
    );
  }
}