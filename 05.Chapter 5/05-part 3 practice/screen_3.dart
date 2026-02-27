import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  static const String id = 'screen_3';
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.lightGreen,
    centerTitle: true,
    title: Text('Counter App',style: TextStyle(color: Colors.white),),
  ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55),
            boxShadow: [BoxShadow(color: Colors.black,blurRadius: 10)],
            color: Colors.lightGreen
          ),
          child: Center(child: Text(x.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),)),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        x++;
        print(x.toString());
        setState(() {

        });
      },
        child: Icon(Icons.add,color: Colors.lightGreen,),
      ),
    );
  }
}
