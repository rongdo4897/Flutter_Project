import 'package:e_commerce/Screens/details/components/body.dart';
import 'package:e_commerce/Screens/details/components/custom_detail_appbar.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  static String routeName = "/details_screen";

  @override
  Widget build(BuildContext context) {

    final ProductDetailsArguments arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomDetailsAppBar(rating: 5),
      body: Body(product: arguments.product),
    );
  }
}

// Lấy data khi chuyển màn hình
class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}