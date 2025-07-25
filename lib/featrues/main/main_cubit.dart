import 'package:bloc/bloc.dart';

import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  void changeIndex(int newIndex) {
    emit(state.copyWith(currentIndex: newIndex));
  }
}
