import 'package:flutter/material.dart';
import 'package:untitled1/home_screen.dart';
import 'package:untitled1/screen2.dart';
import 'package:untitled1/screen3.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: HomeScreen.id,
      routes: {
       HomeScreen.id : (context) => HomeScreen(),
        Screen2.id : (context) => Screen2(),
        Screen3.id : (context) => Screen3(),
      },
    );
  }
}

