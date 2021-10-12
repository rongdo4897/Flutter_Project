import 'package:e_commerce/Configs/Helpers/constants.dart';
import 'package:e_commerce/Configs/Helpers/size_config.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        SizedBox(
          width: SizeConfig.getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),

        //
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPreview(index: index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview({required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(5)),
        padding: EdgeInsets.all(SizeConfig.getProportionateScreenHeight(8)),
        height: SizeConfig.getProportionateScreenHeight(48),
        width: SizeConfig.getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedImage == index
                    ? Constants.kPrimaryColor
                    : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
