import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/Screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce/Screens/splash/components/splash_content.dart';
import 'package:e_commerce/components/default_button.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "We help people connect with store \naround USA",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with US",
      "image": "assets/images/splash_3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      // Chiều cao của sizedbox không đc chỉ định -> tuân theo chiều cao của widget con
      width: double.infinity,
      child: Column(
        children: <Widget>[
          // View bên trên
          Expanded(
              flex: 3, // Chiếm 3 phần tổng thể
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (content, index) => SplashContent(
                        text: splashData[index]["text"] ?? "",
                        image: splashData[index]["image"] ?? "",
                      ))),

          // View bên dưới
          Expanded(
              flex: 2, // chiếm 2 phần tổng thể
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    // 1
                    SizedBox(height: 20),

                    // 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),

                    // 3
                    Spacer(),

                    // 4
                    DefaultButton(
                      width: double.infinity,
                      height: 56,
                      radius: 20,
                      backgroundColor: Constants.kPrimaryColor,
                      textColor: Colors.white,
                      textSize: 20,
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),

                    // 5
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ))
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({int index = 0}) {
    return AnimatedContainer(
      duration: Constants.kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
          color: currentPage == index
              ? Constants.kPrimaryColor
              : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
