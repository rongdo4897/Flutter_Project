import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}