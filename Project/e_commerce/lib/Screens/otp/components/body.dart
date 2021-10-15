import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/otp/components/otp_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),

              Text(
                "OTP Verification",
                textAlign: TextAlign.center,
                style: Constants.headingStyle,
              ),

              //
              Text(
                "We sent tou code to +1 898 860 ***",
                textAlign: TextAlign.center,
              ),

              //
              buildTimer(),

              //
              SizedBox(height: SizeConfig.screenHeight * 0.15),

              //
              OTPForm(),

              //
              SizedBox(height: SizeConfig.screenHeight * 0.1),

              //
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  // Bộ đếm thời gian
  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${double.parse(value.toString()).toInt()}",
            style: TextStyle(color: Colors.red),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
