import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/model/provinces.dart';
import 'package:covid19_tracking/screens/detail/components/card_statistical.dart';
import 'package:flutter/material.dart';

class YesterdayView extends StatefulWidget {
  const YesterdayView({
    Key? key, required this.provinces,
  }) : super(key: key);

  final Provinces provinces;

  @override
  _YesterdayViewState createState() => _YesterdayViewState();
}

class _YesterdayViewState extends State<YesterdayView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardStatistical(
          title: "Confirmed",
          value: "${widget.provinces.confirmed ?? 0}",
          color: Constants.kTitleColor,
        ),
        CardStatistical(
          title: "Deaths",
          value: "${widget.provinces.deaths ?? 0}",
          color: Constants.kDeathColor,
        ),
        CardStatistical(
          title: "Recovered",
          value: "${widget.provinces.recovered ?? 0}",
          color: Constants.kRecoveredColor,
        ),
      ],
    );
  }
}
