import 'package:flutter/material.dart';
import 'package:untitled/screen_1.dart';
import 'package:untitled/screen_2.dart';
import 'package:untitled/screen_3.dart';
import 'package:untitled/screen_4.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Screen1.id,
      routes: {
        Screen1.id : (context) => Screen1(),
        Screen2.id : (context) => Screen2(),
        Screen3.id : (context) => Screen3(),
        Screen4.id : (context) => Screen4(),
      },
    );
  }
}
