import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:cubit_state_managerment/configs/helpers/images_helper.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  double? width;
  final double height;
  bool useText;
  String text;

  ResponsiveButton({
    Key? key,
    this.width,
    this.height = 60,
    this.useText = false,
    this.text = "hi",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorHelpers.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: useText,
              child: AppText(text: text, color: Colors.white),
            ),
            Image.asset("assets/images/" + ImageHelper.ic_button_one),
          ],
        ),
      ),
    );
  }
}
