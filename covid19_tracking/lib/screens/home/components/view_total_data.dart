import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/model/total_country_data.dart';
import 'package:covid19_tracking/screens/home/components/card_total_data.dart';
import 'package:flutter/material.dart';

class TotalDataView extends StatelessWidget {
  const TotalDataView({
    Key? key, required this.totalCountryData,
  }) : super(key: key);

  final TotalCountryData totalCountryData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalDataCard(
                text: "Confirmed",
                value: "${totalCountryData.confirmed}",
                color: Constants.kTitleColor,
              ),
              TotalDataCard(
                text: "Critical",
                value: "${totalCountryData.critical}",
                color: Constants.kCriticalColor,
              ),
              TotalDataCard(
                text: "Deaths",
                value: "${totalCountryData.deaths}",
                color: Constants.kDeathColor,
              ),
            ],
          ),
          //
          SizedBox(height: 15),
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalDataCard(
                text: "Deaths %",
                value: totalCountryData.deathsRate().toStringAsFixed(2),
                color: Constants.kDeathColor,
              ),
              TotalDataCard(
                text: "Recovered",
                value: "${totalCountryData.recovered}",
                color: Constants.kRecoveredColor,
              ),
              TotalDataCard(
                text: "Recovery %",
                value: totalCountryData.recoveredRate().toStringAsFixed(2),
                color: Constants.kRecoveredColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}