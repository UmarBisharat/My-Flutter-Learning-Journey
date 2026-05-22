import 'dart:math';

import 'package:flutter/material.dart';

class LotteryApp extends StatefulWidget {
  static const String id = 'lottery_app';
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
        backgroundColor: Color(0xFF0F172A),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Lottery App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF0F172A),
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(
            child: Text(
              'The Lottery Winning Number is 2',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          SizedBox(height: 35),
          x == 2
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFF1E293B),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(55),
                        topRight: Radius.circular(55),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 20),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box_outlined,
                          color: Colors.green,
                          size: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Congratulations You Won The Lottery \n'
                            'Your Number is $x',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFF1E293B),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(55),
                        topRight: Radius.circular(55),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 20),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cancel, color: Colors.red, size: 35),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Better Luck Next Time, You Lose the Lottery \n'
                            'Your Number is $x',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = Random().nextInt(4);
          print(x);
          setState(() {});
        },
        child: Icon(Icons.refresh_outlined, color: Color(0xFF0F172A)),
      ),
    );
  }
}
