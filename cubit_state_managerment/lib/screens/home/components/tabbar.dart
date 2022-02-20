import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:cubit_state_managerment/screens/home/components/circle_tab_indicator.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: TabBar(
          labelPadding: EdgeInsets.only(left: 0, right: 20),
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: CircleTabIndicator(color: ColorHelpers.mainColor, radius: 4),
          tabs: [
            Tab(text: "Places"),
            Tab(text: "Inspiration"),
            Tab(text: "Emotions"),
          ],
        ),
      ),
    );
  }
}