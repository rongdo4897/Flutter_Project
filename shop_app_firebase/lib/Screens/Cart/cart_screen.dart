import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Screens/Cart/Components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Body(),
    );
  }
}