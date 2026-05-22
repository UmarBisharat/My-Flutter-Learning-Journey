import 'package:flutter/material.dart';
import 'package:untitled/about.dart';
import 'package:untitled/calculator/calculator.dart';
import 'package:untitled/counter_app.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/log_in_ui.dart';
import 'package:untitled/lottery_app.dart';
import 'package:untitled/whatsapp_ui.dart';

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
        LogInUi.id : (context) => LogInUi(),
        LotteryApp.id : (context) => LotteryApp(),
        CounterApp.id : (context) => CounterApp(),
        WhatsappUi.id : (context) => WhatsappUi(),
        Calculator.id : (context) => Calculator(),
        About.id : (context) => About(),
      },
    );
  }
}
