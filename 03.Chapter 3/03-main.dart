import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery app',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),)),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Lottery number is 4'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: x == 4 ? Container(
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.check,color: Colors.green,size: 30,),
                      Text('you won the lottery and your number is $x.'),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.withOpacity(.5),
                  ),
                ) :
                Container(
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.error,color: Colors.red,size: 30,),
                      Text('better luck next time your number is $x. \n' 'try again',textAlign: TextAlign.center,),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.purple.withOpacity(.5),
                  ),
                ),

              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          x = random.nextInt(5);
          print(x);
          setState(() {

          });
        },
          child: Icon(Icons.refresh_outlined),
        ),
      ),
    );
  }
}
