import 'dart:convert';

class TotalCountryData {
  int? confirmed;
  int? critical;
  int? deaths;
  int? recovered;

  double deathsRate() {
    return (deaths ?? 0).toDouble() / (confirmed ?? 1).toDouble() * 100.00;
  }

  double recoveredRate() {
    return (recovered ?? 0).toDouble() / (confirmed ?? 1).toDouble() * 100.00;
  }

  TotalCountryData({
    this.confirmed,
    this.critical,
    this.deaths,
    this.recovered,
  });

  factory TotalCountryData.fromJson(Map<String, dynamic> json) {
    return TotalCountryData(
      confirmed: json["confirmed"] as int,
      critical: json["critical"] as int,
      deaths: json["deaths"] as int,
      recovered: json["recovered"] as int,
    );
  }
}