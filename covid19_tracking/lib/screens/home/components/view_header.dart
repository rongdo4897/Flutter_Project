import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/screens/home/components/card_header.dart';
import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Constants.kTextColor.withOpacity(0.7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardHeader(title: "Country"),
          CardHeader(title: "Conf."),
          CardHeader(title: "Death"),
          CardHeader(title: "Recovery"),
        ],
      ),
    );
  }
}
