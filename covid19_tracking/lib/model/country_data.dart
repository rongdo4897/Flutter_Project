import 'dart:convert';

class CountryData {
  String? country;
  int? confirmed;
  int? critical;
  int? deaths;
  int? recovered;
  double? longitude;
  double? latitude;

  double deathsRate() {
    return (deaths ?? 0).toDouble() / (confirmed ?? 1).toDouble() * 100.00;
  }

  double recoveredRate() {
    return (recovered ?? 0).toDouble() / (confirmed ?? 1).toDouble() * 100.00;
  }

  CountryData({
    this.country,
    this.confirmed,
    this.critical,
    this.deaths,
    this.recovered,
    this.longitude,
    this.latitude,
  });

  factory CountryData.fromJson(Map<String, dynamic> json) {
    return CountryData(
      country: json["country"] as String,
      confirmed: json["confirmed"] as int,
      critical: json["critical"] as int,
      deaths: json["deaths"] as int,
      recovered: json["recovered"] as int,
      longitude: json["longitude"] as double?,
      latitude: json["latitude"] as double?,
    );
  }
}