import 'package:cubit_state_managerment/base/app_large_text.dart';
import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/base/responsive_button.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:cubit_state_managerment/cubit/app_cubits.dart';
import 'package:cubit_state_managerment/screens/welcome/components/text_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List images;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/" + images[index],
                    ),
                    fit: BoxFit.cover)),
            child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain", size: 30),
                      SizedBox(height: 20),
                      TextDescription(
                          text:
                              "Moutain hikes give you an incredible sense of freedom along with endurance test"),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: ((){
                          BlocProvider.of<AppCubits>(context).getData();
                        }),
                        child: ResponsiveButton(width: 120),
                      )
                    ],
                  ),
                  Spacer(),
                  buildDots(index)
                ],
              ),
            ),
          );
        });
  }

  Column buildDots(int index) {
    return Column(
      children: List.generate(
        3,
        (indexDots) {
          return Container(
            margin: EdgeInsets.only(bottom: 2),
            width: 8,
            height: index == indexDots ? 25 : 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: index == indexDots
                  ? ColorHelpers.mainColor
                  : ColorHelpers.mainColor.withOpacity(0.3),
            ),
          );
        },
      ),
    );
  }
}
