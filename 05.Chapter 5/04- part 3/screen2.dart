import 'package:flutter/material.dart';
import 'package:untitled1/screen3.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'Screen2';
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Screen 2',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
      ),
        body: Center(
          child: TextButton(onPressed: (){
            Navigator.pushNamed(context,Screen3.id );
          },
            child: Text('Screen 2'),
          ),
        ),
    );
  }
}
