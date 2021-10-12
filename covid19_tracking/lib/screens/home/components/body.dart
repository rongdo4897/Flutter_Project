import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/model/country_data.dart';
import 'package:covid19_tracking/model/total_country_data.dart';
import 'package:covid19_tracking/screens/detail/detail_screen.dart';
import 'package:covid19_tracking/screens/home/components/view_country_data.dart';
import 'package:covid19_tracking/screens/home/components/view_header.dart';
import 'package:covid19_tracking/screens/home/components/view_total_data.dart';
import 'package:covid19_tracking/service/api_service.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.isSectedSearch}) : super(key: key);

  final bool isSectedSearch;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ApiService client = ApiService();
  List<CountryData> listCountryData = [];
  List<CountryData> searchListCountryData = [];
  TotalCountryData totalCountryData = TotalCountryData();
  bool _isSearching = false;
  String? _searchText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //
          Visibility(
            visible: widget.isSectedSearch,
            child: _viewSearch(),
          ),
          //
          SizedBox(height: 20),
          //
          _viewTotalData(),
          //
          SizedBox(height: 20),
          //
          HeaderView(),
          //
          _viewCountry(context),
        ],
      ),
    );
  }

  Container _viewSearch() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: Constants.kViewColorDefault),
      child: TextFormField(
        initialValue: _searchText,
        onChanged: (text) {
          setState(() {
            _isSearching = true;
            _searchText = text;
            if (text != "" && widget.isSectedSearch) {
              searchListCountryData = listCountryData
                  .where((element) => element.country!
                      .toLowerCase()
                      .contains(text.toLowerCase()))
                  .toList();
            } else {
              searchListCountryData = listCountryData;
            }
          });
        },
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Country...",
            contentPadding: EdgeInsets.only(left: 15, right: 15)),
      ),
    );
  }

  FutureBuilder<TotalCountryData> _viewTotalData() {
    return FutureBuilder(
      future: client.getTotalCountryData(),
      builder: (context, AsyncSnapshot<TotalCountryData> snapshot) {
        if (snapshot.hasData) {
          totalCountryData = snapshot.data!;
          return TotalDataView(totalCountryData: totalCountryData);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _viewCountry(BuildContext context) {
    if (!_isSearching) {
      return viewCountryApi();
    } else {
      if (widget.isSectedSearch) {
        return viewCountrySearch(countryDatas: searchListCountryData);
      } else {
        return viewCountrySearch(countryDatas: listCountryData);
      }
    }
  }

  SizedBox viewCountrySearch({required List<CountryData> countryDatas}) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        itemCount: countryDatas.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, DetailScreen.routeName, arguments: CountryDetailArguments(countryData: countryDatas[index]));
          },
          child: CountryDataView(countryData: countryDatas[index]),
        ),
      ),
    );
  }

  FutureBuilder<List<CountryData>> viewCountryApi() {
    return FutureBuilder(
      future: client.getAllCountry(),
      builder: (context, AsyncSnapshot<List<CountryData>> snapshot) {
        if (snapshot.hasData) {
          listCountryData = snapshot.data ?? [];
          searchListCountryData = listCountryData;

          return SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: listCountryData.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetailScreen.routeName,
                    arguments: CountryDetailArguments(
                        countryData: listCountryData[index]),
                  );
                },
                child: CountryDataView(countryData: listCountryData[index]),
              ),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
