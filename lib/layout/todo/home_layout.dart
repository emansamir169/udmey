import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy/modules/archive/archive_screen.dart';
import 'package:udemy/modules/done/done_screen.dart';
import 'package:udemy/modules/tasks/tasks_screen.dart';
import 'package:udemy/sharerd/cubit/cubit.dart';
import 'package:udemy/sharerd/cubit/states.dart';

class HomeLayout extends StatelessWidget {
  @override
  int currentIndex = 0;

  List<Widget> screens = [TaskScreen(), DoneScreen(), ArchieveScreen()];
  List titels = ["task", "done", "archived"];

  /*void initState() {
    super.initState();
    createDataBase();
  }*/

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(cubit.titels[cubit.currentIndex]),
            ),
            body: cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                // setState(() {});
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: AppCubit.get(context).currentIndex,
              onTap: (index) {
                //  setState(() {currentIndex = index;});
                cubit.changeIndex(index);
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'tasks'),
                BottomNavigationBarItem(icon: Icon(Icons.done), label: 'done'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.archive), label: 'archieved'),
              ],
            ),
          );
        },
      ),
    );
  }

  void createDataBase() async {
    var db = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) async {
        print('db created');
        await database.execute(
            'CREAT TABLE tasks(id INTEGER PRIMARY KEY ,title TEXT ,date TEXT,time TEXT,status TEXT)');
      },
      onOpen: (database) {},
    );
  }

  void insertDataBase() {}
}
