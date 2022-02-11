import 'package:cubit_state_managerment/base/app_large_text.dart';
import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:cubit_state_managerment/configs/helpers/helper_link.dart';
import 'package:cubit_state_managerment/configs/helpers/images_helper.dart';
import 'package:cubit_state_managerment/screens/home/components/category.dart';
import 'package:cubit_state_managerment/screens/home/components/circle_tab_indicator.dart';
import 'package:cubit_state_managerment/screens/home/components/explore_more.dart';
import 'package:cubit_state_managerment/screens/home/components/header.dart';
import 'package:cubit_state_managerment/screens/home/components/tab_image_data.dart';
import 'package:cubit_state_managerment/screens/home/components/tabbar.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  var datas = {
    "${HelperLink.image + ImageHelper.ic_balloning}" : "Balloning",
    "${HelperLink.image + ImageHelper.ic_hiking}" : "Hiking",
    "${HelperLink.image + ImageHelper.ic_kayaking}" : "Kayaking",
    "${HelperLink.image + ImageHelper.ic_snorkling}" : "Snorkling",
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 25, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(height: 40),
              AppLargeText(text: "Discover", size: 30),
              SizedBox(height: 30),
              Tabbar(tabController: _tabController),
              TabImageData(tabController: _tabController),
              SizedBox(height: 30),
              ExploreMore(),
              SizedBox(height: 20),
              Category(datas: datas),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
