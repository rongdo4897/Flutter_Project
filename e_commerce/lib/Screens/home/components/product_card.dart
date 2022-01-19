import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.product, 
    required this.press,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: SizeConfig.getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: SizeConfig.getProportionateScreenWidth(width),
          child: Column(
            children: [
              //
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Constants.kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(product.images[0]),
                ),
              ),
      
              //
              SizedBox(height: 5),
      
              //
              Text(
                product.title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
      
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${product.price}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: SizeConfig.getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        color: Constants.kPrimaryColor),
                    maxLines: 2,
                  ),
      
                  //
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(
                          SizeConfig.getProportionateScreenWidth(8)),
                      width: SizeConfig.getProportionateScreenWidth(28),
                      height: SizeConfig.getProportionateScreenHeight(28),
                      decoration: BoxDecoration(
                          color: product.isFavourite
                              ? Constants.kPrimaryColor.withOpacity(0.15)
                              : Constants.kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? Constants.kPrimaryColor
                            : Constants.kSecondaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
