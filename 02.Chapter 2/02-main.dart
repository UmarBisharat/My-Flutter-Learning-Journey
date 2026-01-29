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
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('hey'),
              Text('hello'),
              Container(
                height: 100,
                width: 100,
                child: Center(child: Text('hello')),
                color: Colors.green,
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                width: 100,
                child: Center(child: Text('hello')),
                color: Colors.red,
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                width: 100,
                child: Center(child: Text('hello')),
                color: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
