import 'package:covid19_tracking/Configs/Helpers/constants.dart';
import 'package:covid19_tracking/Configs/Helpers/size_config.dart';
import 'package:covid19_tracking/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelectedSearch = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentNode = FocusScope.of(context);
        if (!currentNode.hasPrimaryFocus) {
          currentNode.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Recent Data"),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.getProportionateScreenWidth(15)),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSelectedSearch = !isSelectedSearch;
                  });
                },
                child: Icon(
                  Icons.search,
                  size: 26,
                ),
              ),
            )
          ],
        ),
        body: Body(isSectedSearch: isSelectedSearch),
      ),
    );
  }
}
