import 'package:cubit_state_managerment/base/app_square_button.dart';
import 'package:cubit_state_managerment/base/app_large_text.dart';
import 'package:cubit_state_managerment/base/app_text.dart';
import 'package:cubit_state_managerment/configs/helpers/color_helpers.dart';
import 'package:cubit_state_managerment/model/data_model.dart';
import 'package:flutter/material.dart';

class ContentData extends StatefulWidget {
  final int gottenStars;
  final DataModel detail;

  const ContentData({Key? key, required this.gottenStars, required this.detail,}) : super(key: key);

  @override
  State<ContentData> createState() => _ContentDataState();
}

class _ContentDataState extends State<ContentData> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 310,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          width: double.maxFinite,
          height: 500,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                      text: widget.detail.name,
                      color: Colors.black54.withOpacity(0.8),
                      size: 26),
                  AppLargeText(
                      text: "\$ " + widget.detail.price.toString(), color: ColorHelpers.mainColor, size: 26),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.place, color: ColorHelpers.mainColor),
                  AppText(
                      text: widget.detail.location, color: ColorHelpers.textColor1),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Wrap(
                    children: List.generate(5, (index) {
                      return Icon(Icons.star,
                          color: index < widget.detail.stars
                              ? ColorHelpers.starColor
                              : ColorHelpers.textColor2);
                    }),
                  ),
                  SizedBox(width: 10),
                  AppText(text: "${widget.detail.stars}" + ".0", color: ColorHelpers.textColor2),
                ],
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20),
                  SizedBox(height: 5),
                  AppText(
                      text: "Number of people in your group",
                      color: ColorHelpers.mainTextColor),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    alignment: WrapAlignment.spaceBetween,
                    children: List.generate(5, (index) {
                      return InkWell(
                        onTap: (() {
                          setState(() {
                            selectedIndex = index;
                          });
                        }),
                        child: AppSquareButton(
                          text: (index + 1).toString(),
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.black,
                          backgroundColor: selectedIndex == index
                              ? Colors.black
                              : ColorHelpers.buttonBackground,
                          size: 50,
                          borderColor: selectedIndex == index
                              ? Colors.black
                              : ColorHelpers.buttonBackground,
                          radius: 15,
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                          text: "Description",
                          color: Colors.black.withOpacity(0.8),
                          size: 20),
                      SizedBox(height: 5),
                      AppText(
                        text: widget.detail.description,
                        size: 15,
                        color: ColorHelpers.mainTextColor,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
