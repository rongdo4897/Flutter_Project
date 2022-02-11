import 'package:cubit_state_managerment/cubit/app_cubit_state.dart';
import 'package:cubit_state_managerment/cubit/app_cubits.dart';
import 'package:cubit_state_managerment/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Body(),
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: ((context, state){
          if (state is LoadedState) {
            var info = state.places;
            return Body(info: info,);
          } else {
            return Container();
          }
        }),
      )
    );
  }
}
