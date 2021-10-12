import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.getProportionateScreenWidth(20),
        vertical: SizeConfig.getProportionateScreenHeight(15)
      ),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text.rich(
        TextSpan(
          text: "A Summer Surpise\n",
          style: TextStyle(
            color: Colors.white
          ),
          children: [
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )
            ),
          ]
        )
      ),
    );
  }
}