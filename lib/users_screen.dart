import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UsersScreen extends StatelessWidget {
  //UsersScreen({Key? key}) : super(key: key);

  List<UserModel> users = [
    UserModel(id: 1, name: 'Karim Mohamed Monir', phone: '+201150458643'),
    UserModel(id: 2, name: 'Abdallah Mohamed Monir', phone: '+201150458643'),
    UserModel(id: 3, name: 'Mostafa Ashraf Monir', phone: '+201150458643'),
    UserModel(id: 1, name: 'Karim Mohamed Monir', phone: '+201150458643'),
    UserModel(id: 2, name: 'Abdallah Mohamed Monir', phone: '+201150458643'),
    UserModel(id: 3, name: 'Mostafa Ashraf Monir', phone: '+201150458643'),
    UserModel(id: 1, name: 'Karim Mohamed Monir', phone: '+201150458643'),
    UserModel(id: 2, name: 'Abdallah Mohamed Monir', phone: '+201150458643'),
    UserModel(id: 3, name: 'Mostafa Ashraf Monir', phone: '+201150458643'),
    UserModel(id: 1, name: 'Karim Mohamed Monir', phone: '+201150458643'),
    UserModel(id: 2, name: 'Abdallah Mohamed Monir', phone: '+201150458643'),
    UserModel(id: 3, name: 'Mostafa Ashraf Monir', phone: '+201150458643')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUser(users[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 15.0),
                child: Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
              ),
          itemCount: users.length,
      ),
    );
  }
}
// 1. Build item
// 2. Build list
// 3. Add item to list

Widget buildUser(UserModel user) => Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            child: Text(
              '${user.id}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.name}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${user.phone}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
