import 'package:flutter/material.dart';
import 'package:untitled1/counter_app.dart';
import 'package:untitled1/home_screen.dart';
import 'package:untitled1/lottery_app.dart';

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
        LotteryApp.id : (context) => LotteryApp(),
        CounterApp.id : (context) => CounterApp(),
      },
    );
  }
}
