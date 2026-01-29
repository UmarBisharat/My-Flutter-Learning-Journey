import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Practice App',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
   keyboardType: TextInputType.emailAddress,
cursorColor: Colors.green,
enabled: true,
style: TextStyle(fontSize: 18,color: Colors.purpleAccent),
decoration: InputDecoration(
  filled: true,
    prefixIcon: Icon(Icons.email_outlined),
  fillColor: Colors.grey.withOpacity(.3),
  hintText: 'Email',
 // labelText: 'Email ',

  hintStyle: TextStyle(fontSize: 14,color: Colors.red),
  enabledBorder: OutlineInputBorder(
borderSide: BorderSide(color: Colors.red,width: 1),
    borderRadius: BorderRadius.circular(20),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.teal,width: 1),
    borderRadius: BorderRadius.circular(20),
  )
),
    onChanged: (value){
     print(value);
    },
  ),
),
          ],
        ),
      ),
    );
  }
}
