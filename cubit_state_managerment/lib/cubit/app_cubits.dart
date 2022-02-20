import 'package:bloc/bloc.dart';
import 'package:cubit_state_managerment/configs/services/data_services.dart';
import 'package:cubit_state_managerment/cubit/app_cubit_state.dart';
import 'package:cubit_state_managerment/model/data_model.dart';
import 'package:cubit_state_managerment/screens/detail/detail_screen.dart';
import 'package:cubit_state_managerment/screens/welcome/welcome_page.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  void getData() async{
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch(e){

    }
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));

  }
}