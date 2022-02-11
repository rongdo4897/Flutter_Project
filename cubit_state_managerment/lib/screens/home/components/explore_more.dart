import 'package:cubit_state_managerment/base/app_large_text.dart';
import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:flutter/material.dart';

class ExploreMore extends StatelessWidget {
  const ExploreMore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Row(
        children: [
          AppLargeText(text: "Explore more", size: 22),
          Spacer(),
          GestureDetector(
            onTap: (() {
              print("See more");
            }),
            child: AppText(text: "See more", color: ColorHelpers.textColor1),
          ),
        ],
      ),
    );
  }
}