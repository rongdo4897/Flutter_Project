import 'package:e_commerce/Screens/otp/components/body.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({ Key? key}) : super(key: key);

  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentNode = FocusScope.of(context);
        if (!currentNode.hasPrimaryFocus) {
          currentNode.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("OTP Verification"),
        ),
        body: Body(),
      ),
    );
  }
}