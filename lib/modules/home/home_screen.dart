import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('iman'),
          actions: [
            Icon(Icons.add_alert_rounded),
            Icon(Icons.search),
          ],
        ),
      );
  }

}