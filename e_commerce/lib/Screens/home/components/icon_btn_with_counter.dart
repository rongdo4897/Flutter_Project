import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // view đầu tiên
          Container(
            width: SizeConfig.getProportionateScreenWidth(46),
            height: SizeConfig.getProportionateScreenHeight(46),
            padding: EdgeInsets.all(SizeConfig.getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
                color: Constants.kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc),
          ),

          // view đè lên
          if (numOfItems != 0) // Nếu có số lượng item mới hiện
            Positioned(
              right: 0,
              top: -3,
              child: Container(
                width: SizeConfig.getProportionateScreenWidth(16),
                height: SizeConfig.getProportionateScreenHeight(16),
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    style: TextStyle(
                        fontSize: SizeConfig.getProportionateScreenWidth(10),
                        height: 1,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
