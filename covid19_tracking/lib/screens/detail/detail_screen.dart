import 'package:covid19_tracking/model/country_data.dart';
import 'package:covid19_tracking/screens/detail/components/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail_screen";

  @override
  Widget build(BuildContext context) {

    final CountryDetailArguments arguments = ModalRoute.of(context)!.settings.arguments as CountryDetailArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.countryData.country ?? ""),
      ),
      body: Body(countryData: arguments.countryData),
    );
  }
}

class CountryDetailArguments {
  final CountryData countryData;

  CountryDetailArguments({required this.countryData});
}