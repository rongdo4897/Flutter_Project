import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),

        //
        SizedBox(height: 5),

        //
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: SizeConfig.getProportionateScreenWidth(64),
            decoration: BoxDecoration(
                color: product.isFavourite
                    ? Constants.kPrimaryColor.withOpacity(0.26)
                    : Constants.kSecondaryColor.withOpacity(0.26),
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(30))),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color: product.isFavourite
                  ? Constants.kPrimaryColor
                  : Constants.kSecondaryColor,
            ),
          ),
        ),

        //
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.getProportionateScreenWidth(20),
              right: SizeConfig.getProportionateScreenWidth(64)),
          child: Text(
            product.description,
            maxLines: 5,
          ),
        ),

        //
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.getProportionateScreenWidth(20),
              vertical: SizeConfig.getProportionateScreenHeight(10)),
          child: GestureDetector(
            onTap: press,
            child: Row(
              children: [
                //
                Text(
                  "See More Detail",
                  style: TextStyle(
                      color: Constants.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),

                //
                SizedBox(width: 5),

                //
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Constants.kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
