import 'dart:convert';
import 'package:covid19_tracking/model/provinces.dart';

class DailyCountryName {
  String? country;
  List<Provinces>? provinces;
  double? latitude;
  double? longitude;
  String? date;

  DailyCountryName({
    this.country,
    this.provinces,
    this.latitude,
    this.longitude,
    this.date,
  });

  factory DailyCountryName.fromJson(Map<String, dynamic> json) {
    return DailyCountryName(
      country: json["country"] as String,
      provinces: (json["provinces"] as List<dynamic>).map((i) => Provinces.fromJson(i)).toList(),
      latitude: json["latitude"] as double,
      longitude: json["longitude"] as double,
      date: json["date"] as String,
    );
  }
}
