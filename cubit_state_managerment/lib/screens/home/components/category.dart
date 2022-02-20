import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:cubit_state_managerment/cubit/app_cubit_state.dart';
import 'package:cubit_state_managerment/cubit/app_cubits.dart';
import 'package:cubit_state_managerment/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.datas,
  }) : super(key: key);

  final Map<String, String> datas;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: double.maxFinite,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: datas.keys.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: EdgeInsets.only(right: 30),
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(datas.keys.elementAt(index)),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                Spacer(),
                Container(
                  child: AppText(text: datas.values.elementAt(index), color: ColorHelpers.textColor2, size: 14),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}