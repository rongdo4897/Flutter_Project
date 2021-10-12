import 'dart:convert';

class Provinces {
  String? province;
  int? confirmed;
  int? recovered;
  int? deaths;
  int? active;

  double deathsRate() {
    return (deaths ?? 0).toDouble() / (confirmed ?? 1).toDouble() * 100.00;
  }

  double recoveredRate() {
    return (recovered ?? 0).toDouble() / (confirmed ?? 1).toDouble() * 100.00;
  }

  Provinces({
    this.province,
    this.confirmed,
    this.recovered,
    this.deaths,
    this.active,
  });

  factory Provinces.fromJson(Map<String, dynamic> json) {
    return Provinces(
      province: json["province"] as String?,
      confirmed: json["confirmed"] as int?,
      recovered: json["recovered"] as int?,
      deaths: json["deaths"] as int?,
      active: json["active"] as int?,
    );
  }
}
