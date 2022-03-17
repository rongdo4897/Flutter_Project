import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          titleHeader("User"),
          userListTile("Email", "Email sub", Icons.email, context),
          userListTile("Phone Number", "4555", Icons.phone, context),
          userListTile("Shipping Address", "", Icons.local_shipping, context),
          userListTile("Joined Date", "Email sub", Icons.watch_later, context),
        ],
      ),
    );
  }

  Padding titleHeader(String text) {
    return Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
        );
  }

  Material userListTile(
      String title, String subTitle, IconData icon, BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          onTap: (() {}),
          title: Text(title),
          subtitle: Text(subTitle),
          leading: Icon(icon),
        ),
      ),
    );
  }
}
