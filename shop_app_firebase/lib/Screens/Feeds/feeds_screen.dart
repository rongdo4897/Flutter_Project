import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Screens/Feeds/Components/body.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}