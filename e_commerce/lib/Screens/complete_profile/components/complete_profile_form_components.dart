import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/otp/otp_screen.dart';
import 'package:e_commerce/components/custom_suffix_icon.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:flutter/material.dart';

class CompleteProfileFormComponents extends StatefulWidget {
  const CompleteProfileFormComponents({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormComponentsState createState() =>
      _CompleteProfileFormComponentsState();
}

class _CompleteProfileFormComponentsState
    extends State<CompleteProfileFormComponents> {
  final _formKey = GlobalKey<FormState>();

  String firstName = "";
  String lastName = "";
  String phoneNumber = "";
  String address = "";
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
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildFirstNameFormField(),

            SizedBox(height: SizeConfig.getProportionateScreenHeight(25)),

            buildLastNameFormField(),

            SizedBox(height: SizeConfig.getProportionateScreenHeight(25)),

            buildPhoneNumberFormField(),

            SizedBox(height: SizeConfig.getProportionateScreenHeight(25)),

            buildAddressFormField(),

            FormError(errors: errors),

            SizedBox(height: SizeConfig.getProportionateScreenHeight(35)),
            
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
                  Navigator.pushNamed(context, OTPScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  // textfield first name
  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue ?? "",
      onChanged: (value) {
        if (value.isNotEmpty) {
          // Kiểm tra rỗng
          removeError(error: Constants.kNameNullError);
        }

        return null;
      },
      validator: (value) {
        if ((value ?? "") == "") {
          // Kiểm tra rỗng
          addError(error: Constants.kNameNullError);
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "First name",
        hintText: "Enter your first name",
        floatingLabelBehavior:
            FloatingLabelBehavior.always, // Luôn hiển thị label text
        suffixIcon: CustomSuffixIcon(
          svgIconName: "assets/icons/User.svg",
        ),
      ),
    );
  }

  // textfield last name
  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue ?? "",
      onChanged: (value) {
        if (value.isNotEmpty) {
          // Kiểm tra rỗng
          removeError(error: Constants.kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if ((value ?? "") == "") {
          // Kiểm tra rỗng
          addError(error: Constants.kNameNullError);
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Last name",
        hintText: "Enter your last name",
        floatingLabelBehavior:
            FloatingLabelBehavior.always, // Luôn hiển thị label text
        suffixIcon: CustomSuffixIcon(
          svgIconName: "assets/icons/User.svg",
        ),
      ),
    );
  }

  // textfield phone number
  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue ?? "",
      onChanged: (value) {
        if (value.isNotEmpty) {
          // Kiểm tra rỗng
          removeError(error: Constants.kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if ((value ?? "") == "") {
          // Kiểm tra rỗng
          addError(error: Constants.kPhoneNumberNullError);
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone number",
        hintText: "Enter your phone number",
        floatingLabelBehavior:
            FloatingLabelBehavior.always, // Luôn hiển thị label text
        suffixIcon: CustomSuffixIcon(
          svgIconName: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  // textfield address
  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue ?? "",
      onChanged: (value) {
        if (value.isNotEmpty) {
          // Kiểm tra rỗng
          removeError(error: Constants.kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if ((value ?? "") == "") {
          // Kiểm tra rỗng
          addError(error: Constants.kAddressNullError);
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior:
            FloatingLabelBehavior.always, // Luôn hiển thị label text
        suffixIcon: CustomSuffixIcon(
          svgIconName: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
