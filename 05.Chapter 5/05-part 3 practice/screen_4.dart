import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  static const String id = 'screen_4';
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
backgroundColor: Colors.amber,
  centerTitle: true,
  title: Text('Contacts'),
),
body: Column(
  children: [
    Expanded(
      child: ListView.builder(
        itemCount: 22,
        itemBuilder: (context,index){
          return
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxZtC_WI7lFxMh7xkn7gT5kuNB9O2IOP0zPw&s'),),title: Text('Umar'),
          );
        },
      ),
    ),
  ],
),
    );
  }
}
