// in the main.dart,you dont need to import every screen, only the first screen will be written after home : _______
// Main.dart is always stateless widget
//we usually use one scaffold per screen and we use MaterialApp for every screen

import 'package:flutter/material.dart';
import 'package:untitled1/home_screen.dart'; //The import in main.dart is just connecting main.dart with HomeScreen so Flutter knows what widget to show first.

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
