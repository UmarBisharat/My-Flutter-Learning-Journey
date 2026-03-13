import 'package:flutter/material.dart';
import 'package:untitled/screen_3.dart';
import 'package:untitled/screen_4.dart';
import 'package:untitled/screen_5.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'screen_2';
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text(
          'Welcome ho gyaaa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  boxShadow: [BoxShadow(color: Colors.orange, blurRadius: 15)],
                  borderRadius: BorderRadius.circular(55),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Screen3.id);
                  },
                  child: Text(
                    'Lottery App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  boxShadow: [BoxShadow(color: Colors.brown, blurRadius: 15)],
                  borderRadius: BorderRadius.circular(55),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Screen4.id);
                  },
                  child: Text(
                    'Counter App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  boxShadow: [BoxShadow(color: Colors.teal, blurRadius: 15)],
                  borderRadius: BorderRadius.circular(55),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Screen5.id);
                  },
                  child: Text(
                    'WhatsApp',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
