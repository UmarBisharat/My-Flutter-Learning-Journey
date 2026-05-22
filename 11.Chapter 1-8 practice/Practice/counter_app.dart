import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  static const String id = 'counter_app';
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0F172A),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Counter App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF0F172A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFF1E293B),
                boxShadow: [BoxShadow(color: Colors.white, blurRadius: 22)],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
              child: Center(
                child: Text(
                  x.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x.toString());
          setState(() {});
        },
        child: Icon(Icons.add, color: Color(0xFF1E293B), size: 32),
      ),
    );
  }
}
