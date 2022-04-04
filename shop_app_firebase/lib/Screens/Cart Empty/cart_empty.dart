import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Screens/Cart%20Empty/components/body.dart';

class CardEmptyScreen extends StatelessWidget {
  const CardEmptyScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}