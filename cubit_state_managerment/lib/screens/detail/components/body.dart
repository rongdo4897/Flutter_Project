import 'package:cubit_state_managerment/base/app_large_text.dart';
import 'package:cubit_state_managerment/base/app_square_button.dart';
import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/base/responsive_button.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:cubit_state_managerment/configs/helpers/helper_link.dart';
import 'package:cubit_state_managerment/configs/helpers/images_helper.dart';
import 'package:cubit_state_managerment/model/data_model.dart';
import 'package:cubit_state_managerment/screens/detail/components/button_expand.dart';
import 'package:cubit_state_managerment/screens/detail/components/button_menu.dart';
import 'package:cubit_state_managerment/screens/detail/components/content_data.dart';
import 'package:cubit_state_managerment/screens/detail/components/content_image.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.detail,}) : super(key: key);

  final DataModel detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          ContentImage(detail: detail),
          ButtonMenu(),
          ButtonExpand(),
          ContentData(gottenStars: 3, detail: detail),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Row(
              children: [
                AppSquareButton(
                  color: ColorHelpers.textColor2,
                  backgroundColor: Colors.white,
                  size: 60,
                  borderColor: ColorHelpers.textColor2,
                  isIcon: true,
                  icon: Icons.favorite_border,
                  radius: 15,
                ),
                SizedBox(width: 20),
                ResponsiveButton(useText: true, text: "Book Trip Now",)
              ],
            ),
          )
        ],
      ),
    );
  }
}
