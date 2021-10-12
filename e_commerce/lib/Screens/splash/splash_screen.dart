import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/splash/components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}