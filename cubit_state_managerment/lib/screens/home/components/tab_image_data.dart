import 'package:cubit_state_managerment/configs/helpers/helper_link.dart';
import 'package:cubit_state_managerment/configs/helpers/images_helper.dart';
import 'package:flutter/material.dart';

class TabImageData extends StatelessWidget {
  const TabImageData({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      child: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Container(
                margin: EdgeInsets.only(right: 15, top: 10),
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(
                          HelperLink.image + ImageHelper.ic_mountain),
                      fit: BoxFit.cover),
                ),
              );
            }),
          ),
          Text("There"),
          Text("Bye")
        ],
      ),
    );
  }
}