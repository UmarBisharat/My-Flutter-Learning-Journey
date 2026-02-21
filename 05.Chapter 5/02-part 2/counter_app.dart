import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  static const String id = 'counter_app';
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('Counter App',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
      backgroundColor: Colors.teal,
    ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.teal.shade200,
border: Border.all(color: Colors.black12,width: 5),
            boxShadow: [BoxShadow(color: Colors.teal,blurRadius: 15)],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Center(child: Text(x.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 44),)),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        x++;
        print(x.toString());
        setState(() {

        });
      },
        child: Icon(Icons.add,color: Colors.teal,),
      ),
    );
  }
}
