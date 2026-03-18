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
            Text('Umar', style: myTextStyle),
            Text('Umar', style: myTextStyle),
            Text('Umar', style: myTextStyle),
            Text('Umar', style: myTextStyle),
            Text('Umar', style: myTextStyle),
          ],
        ),
      ),
    );
  }
}
