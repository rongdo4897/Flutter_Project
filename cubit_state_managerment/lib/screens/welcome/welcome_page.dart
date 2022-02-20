import 'package:cubit_state_managerment/configs/helpers/images_helper.dart';
import 'package:cubit_state_managerment/screens/welcome/components/body.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    ImageHelper.ic_welcome_one,
    ImageHelper.ic_welcome_two,
    ImageHelper.ic_welcome_three,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(images: images),
    );
  }
}