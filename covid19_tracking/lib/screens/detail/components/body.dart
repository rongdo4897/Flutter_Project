import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/model/country_data.dart';
import 'package:covid19_tracking/model/daily_country_name.dart';
import 'package:covid19_tracking/model/provinces.dart';
import 'package:covid19_tracking/screens/detail/components/view_confirmed.dart';
import 'package:covid19_tracking/screens/detail/components/view_yesterday.dart';
import 'package:covid19_tracking/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.countryData}) : super(key: key);
  final CountryData countryData;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ApiService client = ApiService();
  DailyCountryName dailyCountryName = DailyCountryName();

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    DailyCountryName data = await client.getDailyReportByCountryName(
        country: widget.countryData.country ?? "");
    _refreshController.refreshCompleted();
    setState(() {
      dailyCountryName = DailyCountryName(provinces: [Provinces(confirmed: 2)]);
    });
  }

  @override
  void initState() {
    super.initState();
    fetchCountry();
  }

  Future<DailyCountryName> fetchCountry() async {
    dailyCountryName = await client.getDailyReportByCountryName(
        country: widget.countryData.country ?? "");
    return dailyCountryName;
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      header: WaterDropHeader(),
      onRefresh: _onRefresh,
      controller: _refreshController,
      child: FutureBuilder(
        initialData: dailyCountryName,
        builder: (context, AsyncSnapshot<DailyCountryName> snapshot ) {
          if (snapshot.hasData) {
            return _viewData(
                countryData: widget.countryData,
                provinces: dailyCountryName.provinces?[0] ?? Provinces(recovered: 1));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Container _viewData(
      {required CountryData countryData, required Provinces provinces}) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(
        left: 20,
        top: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
          color: Constants.kViewColorDefault,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          //
          ConfirmedView(countryData: countryData),
          //
          Spacer(),
          //
          SizedBox(
            child: Text(
              "Yesterday",
              style: TextStyle(fontSize: 18, color: Constants.kTitleColor),
            ),
          ),
          //
          Spacer(),
          //
          YesterdayView(provinces: provinces)
        ],
      ),
    );
  }
}
