import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/details/components/color_dots.dart';
import 'package:e_commerce/Screens/details/components/product_description.dart';
import 'package:e_commerce/Screens/details/components/product_images.dart';
import 'package:e_commerce/Screens/details/components/top_rounded_container.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/rouder_icon_btn.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //
          ProductImage(product: product),
    
          //
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                //
                ProductDescription(
                  product: product,
                  press: () {},
                ),
    
                //
                TopRoundedContainer(
                  color: Constants.kSecondaryColor.withOpacity(0.26),
                  child: Column(
                    children: [
                      //
                      ColorDots(product: product),
                      //
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: SizeConfig.getProportionateScreenHeight(15),
                            bottom: SizeConfig.getProportionateScreenHeight(40),
                          ),
                          child: DefaultButton(
                            width: double.infinity,
                            height: 56,
                            radius: 20,
                            backgroundColor: Constants.kPrimaryColor,
                            textColor: Colors.white,
                            textSize: 20,
                            text: "Add to Cart",
                            press: () {
                            
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
