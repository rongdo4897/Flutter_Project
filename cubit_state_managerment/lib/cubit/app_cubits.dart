import 'package:bloc/bloc.dart';
import 'package:cubit_state_managerment/cubit/app_cubit_state.dart';
import 'package:cubit_state_managerment/screens/welcome/welcome_page.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()){
    emit(WelcomeState());
  }

}