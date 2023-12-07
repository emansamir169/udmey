import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udemy/layout/newapp/newApp_layout.dart';
import 'package:udemy/sharerd/shared_network/remote/dio_helper.dart';

void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,
              ),
              elevation: 0.0,
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.pink,
              ),
              iconTheme: IconThemeData(
                color: Colors.pink,
              )),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.pink,
            type: BottomNavigationBarType.fixed,
          )),
      home: NewAppScreen(),
    );
  }
}
