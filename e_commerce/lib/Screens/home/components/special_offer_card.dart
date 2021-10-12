import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key, required this.category, required this.image, required this.numOfBrands, required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: SizeConfig.getProportionateScreenWidth(20)),
        child: SizedBox(
          width: SizeConfig.getProportionateScreenWidth(242),
          height: SizeConfig.getProportionateScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                // Ảnh
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
    
                //
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15)
                      ])),
                ),
    
                //
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.getProportionateScreenWidth(15),
                      vertical: SizeConfig.getProportionateScreenHeight(10)),
                  child: Text.rich(
                    TextSpan(style: TextStyle(color: Colors.white), children: [
                      //
                      TextSpan(
                          text: "$category \n",
                          style: TextStyle(
                              fontSize: SizeConfig.getProportionateScreenWidth(18),
                              fontWeight: FontWeight.bold)),
    
                      //
                      TextSpan(text: "$numOfBrands Brands")
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
