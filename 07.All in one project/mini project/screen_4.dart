import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  static const String id = 'screen_4';
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(
          'Counter App',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.8),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(55),
              boxShadow: [BoxShadow(color: Colors.brown, blurRadius: 50)],
              border: Border.all(color: Colors.brown, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  x.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x.toString());
          setState(() {});
        },
        child: Icon(Icons.add, color: Colors.brown),
      ),
    );
  }
}
