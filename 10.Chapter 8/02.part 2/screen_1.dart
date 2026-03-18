import 'package:flutter/material.dart';
import 'package:practice/constant.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyButton(title: 'logIn', subtitle: ' Button'),
            MyButton(title: 'signUp', subtitle: ' Button'),
          ],
        ),
      ),
    );
  }
}

// component
class MyButton extends StatelessWidget {
  final String title, subtitle;
  const MyButton({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              title + subtitle,
              style: TextStyle(fontSize: 20, color: myColor),
            ),
          ),
        ),
      ),
    );
  }
}
