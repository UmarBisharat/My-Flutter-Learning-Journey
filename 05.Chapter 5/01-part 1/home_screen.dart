import 'package:flutter/material.dart';
import 'package:untitled1/screen_2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigation Drawer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
  Center(
    child: TextButton(
      onPressed:(){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screen2())
        );
      },
      child: Text('Screen 1'),
    ),
  )
],
      ),
    );
  }
}
