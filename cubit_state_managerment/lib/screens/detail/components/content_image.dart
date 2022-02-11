import 'package:cubit_state_managerment/configs/helpers/helper_link.dart';
import 'package:cubit_state_managerment/configs/helpers/images_helper.dart';
import 'package:flutter/material.dart';

class ContentImage extends StatelessWidget {
  const ContentImage({
    Key? key,
  }) : super(key: key);

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
            image: AssetImage(HelperLink.image + ImageHelper.ic_mountain),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}