import 'package:flutter/material.dart';
import 'dart:math';

class Screen3 extends StatefulWidget {
  static const String id = 'screen_3';
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          'Lottery App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lottery winning number is 3',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 22),
          x == 3
              ? Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(55),
                      boxShadow: [
                        BoxShadow(color: Colors.orange, blurRadius: 15),
                      ],
                      border: Border.all(color: Colors.orange, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.check_box_outlined, color: Colors.white),
                        SizedBox(height: 22),
                        Text(
                          'Congratulations You won Lottery & Your Number Is $x \n Play Again',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(55),
                      boxShadow: [BoxShadow(color: Colors.red, blurRadius: 50)],
                      border: Border.all(color: Colors.red, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cancel, color: Colors.white),
                        SizedBox(height: 22),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'You Lose the Lottery & Your Lottery Number is $x \n Better luck next time',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
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
          x++;
          x = Random().nextInt(4);
          setState(() {});
        },
        child: Icon(Icons.refresh, color: Colors.orange),
      ),
    );
  }
}
