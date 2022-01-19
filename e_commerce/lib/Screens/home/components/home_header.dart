import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/cart/cart_screen.dart';
import 'package:e_commerce/Screens/home/components/icon_btn_with_counter.dart';
import 'package:e_commerce/Screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          SearchField(),

          //
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 1,
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),

          //
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
