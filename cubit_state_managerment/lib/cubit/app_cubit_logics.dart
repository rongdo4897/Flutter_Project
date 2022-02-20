import 'package:cubit_state_managerment/cubit/app_cubit_state.dart';
import 'package:cubit_state_managerment/cubit/app_cubits.dart';
import 'package:cubit_state_managerment/screens/detail/detail_screen.dart';
import 'package:cubit_state_managerment/screens/home/home_screen.dart';
import 'package:cubit_state_managerment/screens/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: ((context, state) {
          if (state is WelcomeState) {
            return WelcomePage();
          } 
          if (state is DetailState) {
            return DetailScreen();
          }
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } 
          if (state is LoadedState) {
            return HomeScreen();
          }
          else {
            return Container();
          }
        }),
      ),
    );
  }
}
