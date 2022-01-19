import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabbarItem extends StatelessWidget {
  const TabbarItem({
    Key? key,
    required this.iconName,
    required this.name,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String iconName;
  final String name;
  final Color color;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Spacer(),
          SizedBox(
            width:
                MediaQuery.of(context).size.width / TabbarConstant.numberOfItem,
            height: 23,
            child: SvgPicture.asset(iconName, color: color),
          ),
          SizedBox(height: 1),
          Text(name, style: TextStyle(color: color)),
          Spacer()
        ],
      ),
    );
  }
}
