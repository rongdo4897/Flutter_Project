import 'package:cubit_state_managerment/cubit/app_cubit_state.dart';
import 'package:cubit_state_managerment/cubit/app_cubits.dart';
import 'package:cubit_state_managerment/screens/detail/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Body(),
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: ((context, state){
          DetailState detail = state as DetailState;
          return Body(detail: detail.place);
        }),
      ),
    );
  }
}