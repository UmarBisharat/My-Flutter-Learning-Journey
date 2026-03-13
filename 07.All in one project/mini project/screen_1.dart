import 'package:flutter/material.dart';
import 'package:untitled/about.dart';
import 'package:untitled/screen_2.dart';
import 'package:untitled/screen_3.dart';
import 'package:untitled/screen_4.dart';
import 'package:untitled/screen_5.dart';

class Screen1 extends StatefulWidget {
  static const String id = 'screen_1';
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'All in one App',
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/v2/D4D03AQFSfWlsXowPug/profile-displayphoto-scale_200_200/B4DZv4HQzKJoAY-/0/1769394214008?e=2147483647&v=beta&t=crfcs2P48dMcAYiA4nl8qteM61hT8hKjmDwJrcXbu7g',
                ),
              ),
              accountName: Text('Umar Bisharat'),
              accountEmail: Text('umar@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.login, color: Colors.pink),
              title: Text('Log In', style: TextStyle(color: Colors.pink)),
              onTap: () {
                Navigator.pushNamed(context, Screen1.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.border_all, color: Colors.purple),
              title: Text(
                'Browse Your App',
                style: TextStyle(color: Colors.purple),
              ),
              onTap: () {
                Navigator.pushNamed(context, Screen2.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.games, color: Colors.orange),
              title: Text(
                'Lottery App',
                style: TextStyle(color: Colors.orange),
              ),
              onTap: () {
                Navigator.pushNamed(context, Screen3.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.add,color: Colors.brown,),
              title: Text('Counter App',style: TextStyle(color: Colors.brown),),
              onTap: () {
                Navigator.pushNamed(context, Screen4.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.call, color: Colors.teal),
              title: Text('WhatsApp', style: TextStyle(color: Colors.teal)),
              onTap: () {
                Navigator.pushNamed(context, Screen5.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.green),
              title: Text('About', style: TextStyle(color: Colors.green)),
              onTap: () {
                Navigator.pushNamed(context, About.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 22),
          Center(
            child: Text(
              'Log In',
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: 33,
              ),
            ),
          ),
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'email',
                prefixIcon: Icon(Icons.mail),
                fillColor: Colors.pinkAccent.shade100,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                fillColor: Colors.pinkAccent.shade100,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Colors.pink, width: 2),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text(
              'forget password',
              style: TextStyle(color: Colors.pink),
            ),
          ),
          SizedBox(height: 22),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(55),
              border: Border.all(color: Colors.pinkAccent, width: 2),
              boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 10)],
            ),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Screen2.id);
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: "already have an account ?",
              style: TextStyle(color: Colors.pink),
              children: [
                TextSpan(
                  text: " Sign Up",
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
