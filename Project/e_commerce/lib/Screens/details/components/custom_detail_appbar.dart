import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/components/rouder_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDetailsAppBar({Key? key, required this.rating}) : super(key: key);

  final double rating;

  @override
  // AppBar().preferredSize.height: cung cấp cho chúng tôi chiều cao áp dụng trên thanh ứng dụng của bạn
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenHeight(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            RoudedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () {
                Navigator.pop(context);
              },
            ),

            //
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  //
                  Text(
                    rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),

                  //
                  SizedBox(width: 5),

                  //
                  SvgPicture.asset("assets/icons/Star Icon.svg")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
