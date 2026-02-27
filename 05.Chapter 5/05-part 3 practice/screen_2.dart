import 'package:flutter/material.dart';
import 'dart:math';

class Screen2 extends StatefulWidget {
  static const String id = 'screen_2';
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
  backgroundColor: Colors.pinkAccent,
  centerTitle: true,
  title: Text('Lottery App',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Text('Lottery winning number is 2',style: TextStyle(color: Colors.pink,wordSpacing: 2),),
          SizedBox(height: 22,),
       x == 2 ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                boxShadow: [
                  BoxShadow(
            color: Colors.black,
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(55),
                border: Border.all(
                  color: Colors.black12,
                  width: 2,
                ),
              ),
              child: Column(

                children: [
                  SizedBox(height: 22,),
                  Icon(Icons.error_outline_outlined,color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Yoy lose & Your Lottery Number is $x \n Better luck next time',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  )
                ],
              ),
            ),
          ) :
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           height: 200,
           width: 400,
           decoration: BoxDecoration(
             color: Colors.green,
             boxShadow: [
               BoxShadow(
                 color: Colors.black,
                 blurRadius: 10,
               ),
             ],
             borderRadius: BorderRadius.circular(55),
             border: Border.all(
               color: Colors.black12,
               width: 2,
             ),
           ),
           child: Column(

             children: [
               SizedBox(height: 22,),
               Icon(Icons.check_box,color: Colors.white,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Congratulation you won & Your Lottery Number is $x',style: TextStyle(color: Colors.white),),
               )
             ],
           ),
         ),
       ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        x = random.nextInt(4);
        print(x.toString());
        setState(() {

        });
      },
        child: Icon(Icons.refresh_outlined,color: Colors.pink,size: 33,),
      ),
    );
  }
}
