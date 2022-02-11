import 'package:cubit_state_managerment/configs/helpers/helper_link.dart';
import 'package:cubit_state_managerment/configs/helpers/images_helper.dart';
import 'package:cubit_state_managerment/model/data_model.dart';
import 'package:flutter/material.dart';

class ContentImage extends StatelessWidget {
  const ContentImage({
    Key? key,
    required this.detail,
  }) : super(key: key);

  final DataModel detail;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      child: Container(
        width: double.maxFinite,
        height: 350,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+detail.img),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}