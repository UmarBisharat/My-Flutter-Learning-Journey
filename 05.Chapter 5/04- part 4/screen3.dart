import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  static const String id = 'Screen3';
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child: Column(
    children: [
      Expanded(
        child: ListView.builder(
          itemCount: 50,
            itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxZtC_WI7lFxMh7xkn7gT5kuNB9O2IOP0zPw&s'),
            ),
            title: Text('umar'),
          );
        }),
      )
    ],
  ),
),
    );
  }
}
