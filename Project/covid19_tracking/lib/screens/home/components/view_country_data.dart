import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/model/country_data.dart';
import 'package:covid19_tracking/screens/home/components/card_country_data.dart';
import 'package:flutter/material.dart';

class CountryDataView extends StatelessWidget {
  const CountryDataView({
    Key? key, required this.countryData,
  }) : super(key: key);

  final CountryData countryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Container(
          padding: EdgeInsets.only(left: 20, right: 5),
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardCountryData(data: countryData.country ?? "", color: Constants.kTitleColor),
              CardCountryData(data: "${countryData.confirmed}", color: Constants.kTitleColor),
              CardCountryData(data: "${countryData.deaths}", color: Constants.kDeathColor),
              CardCountryData(
                  data: "${countryData.recovered}", color: Constants.kRecoveredColor),
              Icon(
                Icons.arrow_forward_ios,
                color: Constants.kTextColor,
                size: 15,
              )
            ],
          ),
        ),
        //
        Container(
          width: double.infinity,
          height: 1,
          color: Constants.kTextColor.withOpacity(0.3),
        )
      ],
    );
  }
}
