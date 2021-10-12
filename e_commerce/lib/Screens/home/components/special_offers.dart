import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/home/components/special_offer_card.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          //
          SpecialOfferCard(
            category: "Smart Phone",
            image: "assets/images/Image Banner 2.png",
            numOfBrands: 18,
            press: () {},
          ),

          //
          SpecialOfferCard(
            category: "Fashion",
            image: "assets/images/Image Banner 3.png",
            numOfBrands: 24,
            press: () {},
          ),

          //
          SizedBox(
            width: SizeConfig.getProportionateScreenWidth(20),
          )
        ],
      ),
    );
  }
}
