import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/details/details_screen.dart';
import 'package:e_commerce/Screens/home/components/discount_banner.dart';
import 'package:e_commerce/Screens/home/components/home_category.dart';
import 'package:e_commerce/Screens/home/components/home_header.dart';
import 'package:e_commerce/Screens/home/components/product_card.dart';
import 'package:e_commerce/Screens/home/components/section_title.dart';
import 'package:e_commerce/Screens/home/components/special_offers.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(20)),

            // Phần đầu tiên
            HomeHeader(),

            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

            //
            DiscountBanner(),

            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

            //
            HomeCategories(),

            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

            //
            SectionTitle(
              text: "Special for you",
              press: () {},
            ),

            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(20)),

            //
            SpecialOffers(),

            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

            //
            SectionTitle(
              text: "Popular Product",
              press: () {},
            ),

            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(20)),

            //
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...List.generate(
                    demoProducts.length,
                    (index) => ProductCard(
                      product: demoProducts[index],
                      press: () {
                        Navigator.pushNamed(
                          context,
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                            product: demoProducts[index],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.getProportionateScreenWidth(20),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
