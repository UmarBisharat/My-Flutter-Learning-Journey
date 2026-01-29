import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Practice',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                  color: Colors.black, // make sure it’s visible
                  fontSize: 15),
              children: [
                TextSpan(
                  text: " Sign Up",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // optional, looks like a link
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
