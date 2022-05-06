import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Screens/Feeds/Components/feeds_product.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 240 / 290,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: List.generate(100, (index) {
          return FeedsProduct();
        }),
      ),
    );
  }
}
