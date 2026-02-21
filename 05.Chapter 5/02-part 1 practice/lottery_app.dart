import 'package:flutter/material.dart';
import 'dart:math';

import 'package:untitled1/counter_app.dart';

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Lottery App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The Lottery Winning number is 3',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.pink),),SizedBox(height: 44,),
          x == 3 ? Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Container(
              height: 300,

              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 70,
                  ),
                ],
                border: Border.all(
                  color: Colors.black12,width: 5,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(55),
                  topLeft: Radius.circular(55),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 22),
                  Icon(Icons.check_circle_outlined,color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Congratulations you won & Your Lottery Number is $x',style: TextStyle(color: Colors.black),),
                  )
                ],
              ),
            ),
          ) :
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.redAccent.withOpacity(.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 70,
                  )
                ],
                border: Border.all(
                  color: Colors.black12,width: 5,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(55),
                  topLeft: Radius.circular(55),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 22),
                  Icon(Icons.cancel_outlined,color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Better luck next time & your Lottery Number is $x \n' 'Better luck Next Time',textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.teal.shade400,
borderRadius: BorderRadius.circular(55),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ],
              border: Border.all(color: Colors.black12),
            ),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CounterApp()));
            },
              child: Text('Press Me',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        x =random.nextInt(5);
        print(x.toString());
        setState(() {
        });
      },
        child: Icon(Icons.refresh_outlined,color: Colors.pink,),
      ),
    );
  }
}
