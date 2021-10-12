import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class TotalDataCard extends StatelessWidget {
  const TotalDataCard({
    Key? key,
    required this.text,
    required this.value,
    required this.color,
  }) : super(key: key);

  final String text;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: SizeConfig.screenWidth / 3 - 60 / 3,
      height: 80,
      decoration: BoxDecoration(
          color: Constants.kViewColorDefault,
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        children: [
          Text(
            value,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(color: color, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(color: color, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
