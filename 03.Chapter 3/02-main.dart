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
  int x = 0;
  Random random=Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: Colors.white),)),
          backgroundColor: Colors.pinkAccent,
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('The Lottery Winning Number is 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height:2,thickness: 5,color: Colors.brown,),
            ),
            SizedBox(height: 22),
            Center(
              child: x == 3 ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                  color: Colors.teal,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    border: Border.all(
                      color: Colors.black12,
                      width: 10,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green,
                        blurRadius: 50,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.check_circle,color: Colors.white,),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Congratulations You won the Lottery' 'Your Number is 3',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ) :
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Colors.black12,
                    width: 10,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 50,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    SizedBox(height: 7,),
                    Icon(Icons.error,color: Colors.white,),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Better luck next time \n Your Number is $x',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(4);
            print(x.toString());
            setState(() {
            }
            );
          },
          child: Icon(Icons.refresh_outlined,color: Colors.pink,),
        ),
      ),
    );
  }
}
