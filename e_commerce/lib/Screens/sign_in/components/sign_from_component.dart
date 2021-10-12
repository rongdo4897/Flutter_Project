import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/forgot_password/forgot_pass_screen.dart';
import 'package:e_commerce/Screens/login_success/login_success_screen.dart';
import 'package:e_commerce/components/custom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:flutter/material.dart';

class SignFormComponents extends StatefulWidget {
  const SignFormComponents({Key? key}) : super(key: key);

  @override
  _SignFormComponentsState createState() => _SignFormComponentsState();
}

class _SignFormComponentsState extends State<SignFormComponents> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String email = "";
  String password = "";
  bool remember = false;

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          // 1
          buildEmailFormField(),

          // 2
          SizedBox(
            height: SizeConfig.getProportionateScreenHeight(30),
          ),

          // 3
          buildPasswordFormField(),

          // 4
          SizedBox(
            height: SizeConfig.getProportionateScreenHeight(10),
          ),

          //
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: Constants.kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),

          FormError(errors: errors),

          SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

          // 7
          DefaultButton(
            width: double.infinity,
            height: 56,
            radius: 20,
            backgroundColor: Constants.kPrimaryColor,
            textColor: Colors.white,
            textSize: 20,
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                // Nếu thỏa mãn điều kiện -> chuyển màn hình
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  // textfield email
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue ?? "",
      onChanged: (value) {
        if (value.isNotEmpty) {
          // Kiểm tra rỗng
          removeError(error: Constants.kEmailNullError);
        } else if (Constants.emailValidatorRegExp.hasMatch(value)) {
          // Kiểm tra định dạng regex
          removeError(error: Constants.kValidateEmailError);
        }

        return null;
      },
      validator: (value) {
        if ((value ?? "") == "") {
          // Kiểm tra rỗng
          addError(error: Constants.kEmailNullError);
          return "";
        } else if (!Constants.emailValidatorRegExp.hasMatch(value!)) {
          // Kiểm tra định dạng regex
          addError(error: Constants.kValidateEmailError);
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior:
            FloatingLabelBehavior.always, // Luôn hiển thị label text
        suffixIcon: CustomSuffixIcon(
          svgIconName: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

  // textfield password
  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue ?? "",
      onChanged: (value) {
        if (value.isNotEmpty) {
          // Kiểm tra rỗng
          removeError(error: Constants.kPasswordNullError);
        } else if (value.length >= 8) {
          // Kiểm tra định dạng regex
          removeError(error: Constants.kShortPasswordError);
        }

        return null;
      },
      validator: (value) {
        if ((value ?? "") == "") {
          // Kiểm tra rỗng
          addError(error: Constants.kPasswordNullError);
          return "";
        } else if ((value ?? "").length < 8) {
          // Kiểm tra định dạng regex
          addError(error: Constants.kShortPasswordError);
          return "";
        }

        return null;
      },
      obscureText: true, // Ẩn văn bản gợi ý
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior:
            FloatingLabelBehavior.always, // Luôn hiển thị label text
        suffixIcon: CustomSuffixIcon(
          svgIconName: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
