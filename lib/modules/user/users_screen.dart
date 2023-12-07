import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  // const UsersScreen({Key? key}) : super(key: key);
  List<UserModel> users = [
    UserModel(id: 1, phone: 2123552630252, name: "eman"),
    UserModel(id: 2, phone: 2155555630252, name: "engy"),
    UserModel(id: 3, phone: 2123695560252, name: "mahmoud"),
    UserModel(id: 4, phone: 2123514630252, name: "aya"),
    UserModel(id: 5, phone: 212365630252, name: "mariam"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("users"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return buildUserModel(users[index]);
            },
            separatorBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 1.0,
              );
            },
            itemCount: users.length));
  }

  Widget buildUserModel(user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30.0,
            child: Text('${user.id}'),
          ),
          SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${user.name}"),
              SizedBox(
                height: 10.0,
              ),
              Text("${user.phone}"),
            ],
          ),
        ],
      ),
    );
  }
}

/*class UserModel {
  final int id;
  final int phone;
  final String name;
  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });
}*/
