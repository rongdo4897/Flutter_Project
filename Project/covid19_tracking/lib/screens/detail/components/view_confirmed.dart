import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/model/country_data.dart';
import 'package:covid19_tracking/model/daily_country_name.dart';
import 'package:covid19_tracking/model/provinces.dart';
import 'package:covid19_tracking/screens/detail/components/card_statistical.dart';
import 'package:flutter/material.dart';

class ConfirmedView extends StatelessWidget {
  const ConfirmedView({
    Key? key,
    required this.countryData,
  }) : super(key: key);

  final CountryData countryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardStatistical(
            title: "Confirmed",
            value: "${countryData.confirmed ?? 0}",
            color: Constants.kTitleColor),
        CardStatistical(
          title: "Critical",
          value: "${countryData.critical ?? 0}",
          color: Constants.kCriticalColor,
        ),
        CardStatistical(
          title: "Deaths",
          value: "${countryData.deaths ?? 0}",
          color: Constants.kDeathColor,
        ),
        CardStatistical(
          title: "Deaths %",
          value: countryData.deathsRate().toStringAsFixed(2),
          color: Constants.kDeathColor,
        ),
        CardStatistical(
            title: "Recovered",
            value: "${countryData.recovered ?? 0}",
            color: Constants.kRecoveredColor),
        CardStatistical(
            title: "Recovered %",
            value: countryData.recoveredRate().toStringAsFixed(2),
            color: Constants.kRecoveredColor),
      ],
    );
  }
}
