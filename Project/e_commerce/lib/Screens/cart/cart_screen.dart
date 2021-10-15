import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/cart/components/body.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/model/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static String routeName = "/cart_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.getProportionateScreenWidth(15),
        horizontal: SizeConfig.getProportionateScreenHeight(30),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.5)),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                //
                Container(
                  padding: EdgeInsets.all(10),
                  height: SizeConfig.getProportionateScreenHeight(40),
                  width: SizeConfig.getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
      
                //
                Spacer(),
      
                //
                Text("Add voucher code"),
      
                //
                SizedBox(width: 10),
      
                //
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Constants.kTextColor,
                )
              ],
            ),
      
            //
            SizedBox(height: SizeConfig.getProportionateScreenHeight(20)),
      
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(text: "Total: \n", children: [
                  TextSpan(
                      text: "\$337.15",
                      style: TextStyle(color: Colors.black, fontSize: 16))
                ])),
                SizedBox(
                  width: SizeConfig.getProportionateScreenWidth(190),
                  child: DefaultButton(
                    width: double.infinity,
                    height: 56,
                    radius: 20,
                    backgroundColor: Constants.kPrimaryColor,
                    textColor: Colors.white,
                    textSize: 20,
                    text: "Check Out",
                    press: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
