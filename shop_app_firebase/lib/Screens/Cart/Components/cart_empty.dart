import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_firebase/Configs/Helpers/color_helpers.dart';
import 'package:shop_app_firebase/provider/dart_theme_provider.dart';

class CardEmpty extends StatelessWidget {
  const CardEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/emptycart.png"),
                ),
              ),
            ),
            Text(
              "Your Cart Is Empty",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Look Like You didn\'t \n add anything to your cart yet",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: themeChange.darkTheme
                    ? Theme.of(context).disabledColor
                    : ColorHelpers.subTitle,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              child: RaisedButton(
                onPressed: (() {}),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.red),
                ),
                color: Colors.redAccent,
                child: Text(
                  "Shop Now".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: themeChange.darkTheme
                        ? Theme.of(context).disabledColor
                        : ColorHelpers.subTitle,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
