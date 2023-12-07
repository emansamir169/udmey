import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/sharerd/cubit/states.dart';

import '../../modules/archive/archive_screen.dart';
import '../../modules/done/done_screen.dart';
import '../../modules/tasks/tasks_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppIntialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens = [TaskScreen(), DoneScreen(), ArchieveScreen()];
  List<String> titels = ["task", "done", "archived"];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomBar());
  }
}
