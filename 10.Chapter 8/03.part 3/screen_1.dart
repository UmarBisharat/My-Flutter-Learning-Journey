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
            MyButton(title: 'logIn'),
            MyButton(),
          ],
        ),
      ),
    );
  }
}

// component
class MyButton extends StatelessWidget {
   String title;
   MyButton({super.key,  this.title = ''});

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
              title,
              style: TextStyle(fontSize: 20, color: myColor),
            ),
          ),
        ),
      ),
    );
  }
}
