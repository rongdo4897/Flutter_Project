import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Screens/Search/Components/body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}