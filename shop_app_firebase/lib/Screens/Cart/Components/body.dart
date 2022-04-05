import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Configs/Helpers/icon_helpers.dart';
import 'package:shop_app_firebase/Screens/Cart/Components/cart_empty.dart';
import 'package:shop_app_firebase/Screens/Cart/Components/cart_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List product = [];

    return !product.isEmpty
        ? Scaffold(
            body: CardEmpty(),
          )
        : Scaffold(
            bottomSheet: checkoutSection(context),
            appBar: AppBar(
              title: Text("Cart Items Count"),
              actions: [
                IconButton(
                  onPressed: (() {}),
                  icon: Icon(IconHelpers.trash),
                ),
              ],
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index){
                  return CardItem();
                }),
              ),
            ),
          );
  }

  Widget checkoutSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: (() {}),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Checkout",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              "Total",
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "US \$179.0",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
