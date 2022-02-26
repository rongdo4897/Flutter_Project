import 'package:e_commerce/Configs/Helpers/size_config.dart';
import "package:flutter/material.dart";

// Form lỗi

import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      // Sinh ra 1 danh sách cách lỗi
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  // Giao diện 1 lỗi
  Row formErrorText({String error = ""}) {
    return Row(
      children: <Widget>[
        // 1
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: SizeConfig.getProportionateScreenHeight(16),
          width: SizeConfig.getProportionateScreenWidth(16),
        ),

        // 2
        SizedBox(width: SizeConfig.getProportionateScreenWidth(10)),

        // 3
        Text(error)
      ],
    );
  }
}
