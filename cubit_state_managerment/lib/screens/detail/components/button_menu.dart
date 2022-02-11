import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 70,
      child: IconButton(
        onPressed: (() {}),
        icon: Icon(Icons.menu),
        color: Colors.white,
      ),
    );
  }
}