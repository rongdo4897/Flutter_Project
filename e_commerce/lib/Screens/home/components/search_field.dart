import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: Constants.kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        onChanged: (value) {
          // search
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search Product",
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(10),
            vertical: SizeConfig.getProportionateScreenHeight(8.5)
          )
        ),
      ),
    );
  }
}