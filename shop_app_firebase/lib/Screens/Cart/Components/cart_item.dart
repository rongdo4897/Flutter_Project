import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_firebase/Configs/Helpers/color_helpers.dart';
import 'package:shop_app_firebase/provider/dart_theme_provider.dart';

class CardItem extends StatefulWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    final themChange = Provider.of<DarkThemeProvider>(context);

    return Container(
      height: 130,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        children: [
          Container(
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.ytimg.com/vi/ETsekJKsr3M/maxresdefault.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "title",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (() {}),
                          borderRadius: BorderRadius.circular(32),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Entypo.cross,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Price:"),
                      SizedBox(width: 5),
                      Text(
                        "450\$",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Sub Total:"),
                      SizedBox(width: 5),
                      Text(
                        "450\$",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: themChange.darkTheme
                              ? Colors.brown.shade900
                              : Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "Ships Free",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: themChange.darkTheme
                              ? Colors.brown.shade900
                              : Theme.of(context).accentColor,
                        ),
                      ),
                      Spacer(),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (() {}),
                          borderRadius: BorderRadius.circular(4),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              child: Icon(
                                Entypo.minus,
                                color: Colors.red,
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 12,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                ColorHelpers.gradiend_L_Start,
                                ColorHelpers.gradiend_L_End,
                              ],
                              stops: [0.0, 0.9],
                            ),
                          ),
                          child: Text("1", textAlign: TextAlign.center,),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (() {}),
                          borderRadius: BorderRadius.circular(4),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              child: Icon(
                                Entypo.plus,
                                color: Colors.green,
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
