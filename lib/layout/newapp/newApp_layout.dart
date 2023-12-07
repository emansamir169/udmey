import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/layout/newapp/cubit/cubit.dart';
import 'package:udemy/layout/newapp/cubit/states.dart';
import 'package:udemy/modules/sports/sports_screen.dart';

import '../../modules/business/business_screen.dart';
import '../../modules/science/science_screen.dart';
import '../../modules/setting/setting_screen.dart';

class NewAppScreen extends StatelessWidget {
  int currentOfIndex = 0;
  List<Widget> screensLayout = [
    SportsScreen(),
    BusinessScreen(),
    ScienceScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewAppCubit(),
      child: BlocConsumer<NewAppCubit, NewStates>(
        listener: (context, state) {},
        builder: (context, state) {
          NewAppCubit newCubit = NewAppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(newCubit.titleOfLayout[newCubit.currentOfIndex]),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            body: newCubit.screensLayout[newCubit.currentOfIndex],
            bottomNavigationBar: BottomNavigationBar(
                selectedFontSize: 0.0,
                unselectedFontSize: 0.0,
                currentIndex: newCubit.currentOfIndex,
                onTap: (index) {
                  newCubit.bottomChange(index);
                },
                items: newCubit.bottomItems),
          );
        },
      ),
    );
  }
}
