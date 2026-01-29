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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('hello'),
                  Icon(Icons.adb_sharp),
                  Text('hello'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 100,
                child: Center(child: Text('hello')),
                color: Colors.green,
              ),

              Container(
                height: 100,
                width: 100,
                child: Center(child: Text('hello')),
                color: Colors.red,
              ),

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
