import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Screens/User%20Info/Components/body.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}