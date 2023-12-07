import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/layout/newapp/cubit/states.dart';
import 'package:udemy/modules/business/business_screen.dart';
import 'package:udemy/modules/science/science_screen.dart';
import 'package:udemy/modules/sports/sports_screen.dart';

import '../../../modules/setting/setting_screen.dart';

class NewAppCubit extends Cubit<NewStates> {
  NewAppCubit() : super(NewIntialState());
  static NewAppCubit get(context) => BlocProvider.of(context);
  int currentOfIndex = 0;
  List<Widget> screensLayout = [
    SportsScreen(),
    ScienceScreen(),
    BusinessScreen(),
    SettingScreen(),
  ];
  List<String> titleOfLayout = ["sports", "science", "business", "settings"];
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.sports), label: "sports"),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: "science"),
    BottomNavigationBarItem(icon: Icon(Icons.business), label: "business"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings"),
  ];
  void bottomChange(int index) {
    currentOfIndex = index;
    emit(NewChangeIndex());
  }
}
