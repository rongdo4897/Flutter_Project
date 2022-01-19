import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:flutter/material.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    pin2FocusNode?.dispose();
    pin3FocusNode?.dispose();
    pin4FocusNode?.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //
            SizedBox(
                width: SizeConfig.getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: Constants.otpInputDecoration, // tùy chỉnh bố cục
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2FocusNode!);
                  },
                )),
            //
            SizedBox(
                width: SizeConfig.getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: Constants.otpInputDecoration, // tùy chỉnh bố cục
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3FocusNode!);
                  },
                )),
            //
            SizedBox(
                width: SizeConfig.getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: Constants.otpInputDecoration, // tùy chỉnh bố cục
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4FocusNode!);
                  },
                )),
            //
            SizedBox(
                width: SizeConfig.getProportionateScreenWidth(60),
                child: TextFormField(
                  obscureText: true,
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: Constants.otpInputDecoration, // tùy chỉnh bố cục
                  onChanged: (value) {
                    pin4FocusNode!.unfocus();
                  },
                ))
          ]),
          //
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          //
          DefaultButton(
            width: double.infinity,
            height: 56,
            radius: 20,
            backgroundColor: Constants.kPrimaryColor,
            textColor: Colors.white,
            textSize: 20,
            text: "Continue",
            press: () {},
          ),
        ],
      ),
    );
  }
}
