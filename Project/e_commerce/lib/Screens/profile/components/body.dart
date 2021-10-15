import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/profile/components/profilePicture.dart';
import 'package:e_commerce/Screens/profile/components/profile_menu.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: [
        SizedBox(height: SizeConfig.getProportionateScreenHeight(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfilePicture(
              imageName: "assets/images/Profile Image.png",
              pressIconCamera: () {
                print(1);
              },
            ),
          ],
        ),
        SizedBox(height: SizeConfig.getProportionateScreenHeight(20)),
        //
        SingleChildScrollView(
          child: Column(
            children: [
              //
              ProfileMenu(
                iconName: "assets/icons/User.svg",
                title: "My Account",
                press: () {
                  print(1);
                },
              ),
              //
              ProfileMenu(
                iconName: "assets/icons/Bell.svg",
                title: "Notifications",
                press: () {
                  print(2);
                },
              ),
              //
              ProfileMenu(
                iconName: "assets/icons/Settings.svg",
                title: "Settings",
                press: () {
                  print(3);
                },
              ),
              //
              ProfileMenu(
                iconName: "assets/icons/Question mark.svg",
                title: "Help Center",
                press: () {
                  print(4);
                },
              ),
              //
              ProfileMenu(
                iconName: "assets/icons/Log out.svg",
                title: "Log Out",
                press: () {
                  print(5);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
