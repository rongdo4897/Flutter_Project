import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/components/custom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/components/no_account_text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
      
              Text(
                "Forgot Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: SizeConfig.getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
      
              SizedBox(height: SizeConfig.screenHeight * 0.1),
      
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {

  final _formKey = GlobalKey<FormState>();

  List<String> errors = [];
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue ?? "",
            onChanged: (value) {
              if (value.isNotEmpty &&
                  errors.contains(Constants.kEmailNullError)) {
                // Kiểm tra rỗng
                setState(() {
                  errors.remove(Constants.kEmailNullError);
                });
              } else if (Constants.emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(Constants.kValidateEmailError)) {
                // Kiểm tra định dạng regex
                setState(() {
                  errors.remove(Constants.kValidateEmailError);
                });
              }

              return null;
            },
            validator: (value) {
              if ((value ?? "") == "" &&
                  !errors.contains(Constants.kEmailNullError)) {
                // Kiểm tra rỗng
                setState(() {
                  errors.add(Constants.kEmailNullError);
                });
              } else if (!Constants.emailValidatorRegExp.hasMatch(value!) &&
                  !errors.contains(Constants.kValidateEmailError)) {
                // Kiểm tra định dạng regex
                setState(() {
                  errors.add(Constants.kValidateEmailError);
                });
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
          ),

          SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),

          FormError(errors: errors),

          SizedBox(height: SizeConfig.screenHeight * 0.1),

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

              }
            },
          ),

          SizedBox(height: SizeConfig.screenHeight * 0.1),

          NoAccountText(),
        ],
      ),
    );
  }
}
