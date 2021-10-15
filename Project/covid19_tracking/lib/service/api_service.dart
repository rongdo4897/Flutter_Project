import 'dart:convert';
import 'package:covid19_tracking/model/country_data.dart';
import 'package:covid19_tracking/model/daily_country_name.dart';
import 'package:covid19_tracking/model/total_country_data.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ApiService {
  final Map<String, String> headers = {
    "x-rapidapi-key": "RAPID_API_KEY",
    "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
  };

  // Lấy dữ liệu trên toàn thế giới
  Future<TotalCountryData> getTotalCountryData() async {
    final Uri currentTotalUrl =
        Uri.parse("https://covid-19-data.p.rapidapi.com/totals");

    Response res = await get(currentTotalUrl, headers: headers);

    // Kiểm tra status 200
    if (res.statusCode == 200) {
      // Chuyển dữ liệu nhận về sang dạng json
      List<dynamic> body = jsonDecode(res.body);

      // Chuyển cấu trúc json sang dạng list object
      List<TotalCountryData> totalCountryDatas =
          body.map((dynamic item) => TotalCountryData.fromJson(item)).toList();

      return totalCountryDatas[0];
    } else {
      throw ("Can't get the total country data");
    }
  }

  // Lấy dữ liệu từng quốc gia
  Future<List<CountryData>> getAllCountry() async {
    final Uri allCountryUrl =
        Uri.parse("https://covid-19-data.p.rapidapi.com/country/all");
    Response res = await get(allCountryUrl, headers: headers);

    // Kiểm tra status 200
    if (res.statusCode == 200) {
      // Chuyển dữ liệu về dạng json
      List<dynamic> body = jsonDecode(res.body);
      //
      List<CountryData> countryDatas =
          body.map((dynamic item) => CountryData.fromJson(item)).toList();
      //
      countryDatas.sort((a, b) {
        return (b.confirmed ?? 0).compareTo((a.confirmed ?? 0));
      });
      //
      return countryDatas;
    } else {
      throw ("Can't get the country data");
    }
  }

  // Lấy dữ liệu theo tên quốc gia theo ngày
  Future<DailyCountryName> getDailyReportByCountryName(
      {required String country}) async {
    // date
    DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
    DateFormat formatter = new DateFormat("yyyy-MM-dd");
    String currentDateFormat = formatter.format(yesterday);

    // url
    String urlString =
        "https://covid-19-data.p.rapidapi.com/report/country/name?name=$country&date=$currentDateFormat";

    final Uri dailyCountryUrl = Uri.parse(urlString);

    // request http
    Response res = await get(dailyCountryUrl, headers: headers);

    if (res.statusCode == 200) {
      // Chuyển dữ liệu nhận về sang dạng json
      List<dynamic> body = jsonDecode(res.body);
      // Chuyển cấu trúc json sang dạng list object
      List<DailyCountryName> dailyCountrys =
          body.map((dynamic item) => DailyCountryName.fromJson(item)).toList();
      return dailyCountrys[0];
    } else {
      throw ("Can't get the Daily report by country name");
    }
  }
}
