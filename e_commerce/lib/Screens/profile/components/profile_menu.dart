import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.iconName,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String iconName;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.getProportionateScreenHeight(15),
            horizontal: SizeConfig.getProportionateScreenHeight(20)),
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
            color: Constants.kSecondaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            //
            SizedBox(width: SizeConfig.getProportionateScreenWidth(10)),
            //
            Container(
              padding: EdgeInsets.all(20),
              height: double.infinity,
              child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(
                  iconName,
                  color: Constants.kPrimaryColor,
                ),
              ),
            ),
            //
            SizedBox(width: SizeConfig.getProportionateScreenWidth(10)),
            //
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            //
            Spacer(),
            //
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Constants.kSecondaryColor,
            ),
            //
            SizedBox(width: SizeConfig.getProportionateScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}
