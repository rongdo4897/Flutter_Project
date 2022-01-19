import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/model/cart.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //
        SizedBox(
          width: SizeConfig.getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),

        //
        SizedBox(width: SizeConfig.getProportionateScreenWidth(20)),

        //
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Text(
              cart.product.title,
              style: TextStyle(
                  fontSize: SizeConfig.getProportionateScreenWidth(16),
                  color: Colors.black),
            ),

            //
            SizedBox(height: 10),

            //
            Text.rich(TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(color: Constants.kPrimaryColor),
                children: [
                  TextSpan(
                      text: " x${cart.numOfItems}",
                      style: TextStyle(color: Constants.kTextColor))
                ]))
          ],
        )
      ],
    );
  }
}
