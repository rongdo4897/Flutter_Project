import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:flutter/material.dart';

class CardStatistical extends StatelessWidget {
  const CardStatistical({
    Key? key,
    required this.title,
    required this.value,
    this.color = Colors.black,
  }) : super(key: key);

  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Constants.kTitleColor,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Text(
                value,
                style: TextStyle(
                  color: color,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          //
          SizedBox(height: 10),
          //
          Container(
              width: double.infinity,
              height: 1,
              color: Constants.kTextColor.withOpacity(0.3))
        ],
      ),
    );
  }
}
