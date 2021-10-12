import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/complete_profile/complete_profile_screeb.dart';
import 'package:e_commerce/components/custom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:flutter/material.dart';

class SignUpFormComponents extends StatefulWidget {
  const SignUpFormComponents({Key? key}) : super(key: key);

  @override
  _SignUpFormComponentsState createState() => _SignUpFormComponentsState();
}

class _SignUpFormComponentsState extends State<SignUpFormComponents> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String comfrom_password = "";
  final List<String> errors = [];

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
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
            buildConformPasswordFormField(),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.getProportionateScreenHeight(40)),
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
                  // Nếu thỏa mãn điều kiện -> chuyển màn hình
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
              },
            ),
          ],
        ),
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
        password = value;
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

  // textfield conform password
  TextFormField buildConformPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => comfrom_password = newValue ?? "",
      onChanged: (value) {
        if (password == comfrom_password) {
          // Kiểm tra rỗng
          removeError(error: Constants.kMatchPasswordError);
        }

        return null;
      },
      validator: (value) {
        if ((value ?? "") == "") {
          // Kiểm tra rỗng
          return "";
        } else if (password != value) {
          // Kiểm tra định dạng regex
          addError(error: Constants.kMatchPasswordError);
          return "";
        }

        return null;
      },
      obscureText: true, // Ẩn văn bản gợi ý
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior:
            FloatingLabelBehavior.always, // Luôn hiển thị label text
        suffixIcon: CustomSuffixIcon(
          svgIconName: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
