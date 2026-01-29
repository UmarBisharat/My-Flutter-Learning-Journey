
import 'package:flutter/material.dart';

void main(){
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
          title: Center(child: Text('Practice App',style: TextStyle(color: Colors.white),)),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex:3,
                  child: Container(
                    color: Colors.redAccent,
                    height: 250,
                    child: Center(child: Text('Container')),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 250,
                    child: Center(child: Text('Container')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


**************************************************************************************************************************************************
🔹 What is Expanded in Flutter?

Expanded is a widget used inside Row, Column, or Flex.
It tells Flutter to take the available free space and fill it.

👉 Without Expanded, widgets take only the space they need.
👉 With Expanded, they stretch.

🔹 Why do we use Expanded?

✅ To avoid overflow errors
✅ To divide space between widgets
✅ To make UI responsive

🔹 flex property (MOST IMPORTANT)

flex controls how much space a widget takes relative to others.

Rule:

Space is divided in ratios

Default flex = 1
