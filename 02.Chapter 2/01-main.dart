import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade400,
          title: Center(child: Text('hey')),
        ),
        backgroundColor: Colors.white70,
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.teal,
            child: Center(child: Text('hello')),
          ),
        ),
      ),
    );
  }
}
