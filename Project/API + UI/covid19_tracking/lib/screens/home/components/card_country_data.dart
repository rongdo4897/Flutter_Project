import 'package:covid19_tracking/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class CardCountryData extends StatelessWidget {
  const CardCountryData({
    Key? key,
    required this.data,
    required this.color,
  }) : super(key: key);

  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth / 4 - 15 * 5 / 4,
      child: Text(
        data,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(
          color: color,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
