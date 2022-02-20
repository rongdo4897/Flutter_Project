import 'package:cubit_state_managerment/cubit/app_cubits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        onPressed: (() {
          BlocProvider.of<AppCubits>(context).goHome();
        }),
        icon: Icon(Icons.menu),
        color: Colors.white,
      ),
    );
  }
}