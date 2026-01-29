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
          title: Center(child: Text('Practice App',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),)),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         //  SizedBox is used to give a size limit (constraint) to a widget.
            SizedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 180,
                      width: 180,
                      color: Colors.green,
                    ),
                  ),
                  Positioned (
                    top: 10,
                    child:  Text('Umar'),
                  ),

                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 50,
                  color: Colors.purpleAccent,
                ),
                Container(
                  height: 100,
                  width: 10,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

***************************************************************************
 Stack =
🧠 What is Stack widget?
Stack is a widget that places its children on top of each other (layer by layer).
******************************************************************************
 Positioned = 
 🧠 What is Positioned in Flutter?
Positioned is a widget that lets you place a child widget at an exact location inside a Stack.
 
