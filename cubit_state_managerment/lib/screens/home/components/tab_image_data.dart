import 'package:cubit_state_managerment/configs/helpers/helper_link.dart';
import 'package:cubit_state_managerment/configs/helpers/images_helper.dart';
import 'package:cubit_state_managerment/cubit/app_cubits.dart';
import 'package:cubit_state_managerment/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabImageData extends StatelessWidget {
  const TabImageData({
    Key? key,
    required TabController tabController,
    required this.info,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;
  final List<DataModel> info;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      child: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: info.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: ((){
                  BlocProvider.of<AppCubits>(context).detailPage(info[index]);
                }),
                child: Container(
                  margin: EdgeInsets.only(right: 15, top: 10),
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage("http://mark.bslmeiyu.com/uploads/" + info[index].img),
                        fit: BoxFit.cover),
                  ),
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