import 'package:flutter/material.dart';

class ButtonExpand extends StatelessWidget {
  const ButtonExpand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 70,
      child: IconButton(
        onPressed: (() {}),
        icon: Icon(Icons.expand),
        color: Colors.white,
      ),
    );
  }
}