import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.press,
      required this.icon,
      required this.text,
      required this.activeColor,
      required this.activeBackgroundColor})
      : super(key: key);
  final VoidCallback press;
  final String icon, text;
  final Color activeColor;
  final Color activeBackgroundColor;

  @override
  Widget build(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width - 30) / TabbarConstant.numberOfItem;
    return AnimatedContainer(
      duration: Constants.kAnimationDuration,
      curve: Curves.easeIn,
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: double.infinity,
          width: width,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(TabbarConstant.tabbarHeight / 2),
            color: activeBackgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon, color: activeColor),
              SizedBox(height: 3),
              Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: activeColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
