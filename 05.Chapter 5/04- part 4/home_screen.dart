import 'package:flutter/material.dart';
import 'package:untitled1/screen2.dart';
import 'package:untitled1/screen3.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
    //  DrawerHeader(child: Text('Umar')),
      UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
          currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS92JyIsH4UH3jsPswgdDIMfkHa9gxeUTPgAQ&s'),),
          accountName: Text('Umar Bisharat'),
          accountEmail: Text('umar@gmail.com')
      ),
      ListTile(
        leading: Icon(Icons.home_filled),
        title: Text('Page 1'),
        onTap: (){
          Navigator.pushNamed(context, HomeScreen.id);
        },
      ),
      ListTile(
        leading: Icon(Icons.home_filled),
        title: Text('Page 2'),
        onTap: (){
          Navigator.pushNamed(context, Screen2.id);
        },
      ),
      ListTile(
        leading: Icon(Icons.home_filled),
        title: Text('Page 3'),
        onTap: (){
          Navigator.pushNamed(context, Screen3.id);
        },
      ),
    ],
  ),
),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    TextButton(onPressed: (){
      Navigator.pushNamed(context, Screen2.id);
    },
      child: Center(child: Text('Hello')),
    )
  ],
),
    );
  }
}
