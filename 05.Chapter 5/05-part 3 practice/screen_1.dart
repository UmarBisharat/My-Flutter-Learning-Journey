import 'package:flutter/material.dart';
import 'package:untitled/screen_2.dart';
import 'package:untitled/screen_3.dart';
import 'package:untitled/screen_4.dart';

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
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'Welcome',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'All in one',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              accountName: Text('Umar'),
              accountEmail: Text('umarbisharat77@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Log In'),
              onTap: () {
                Navigator.pushNamed(context, Screen1.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.videogame_asset_sharp),
              title: Text('Lottery App'),
              onTap: () {
                Navigator.pushNamed(context, Screen2.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.exposure_plus_1_sharp),
              title: Text('Counter App'),
              onTap: () {
                Navigator.pushNamed(context, Screen3.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone, color: Colors.red),
              title: Text('Contact'),
              onTap: () {
                Navigator.pushNamed(context, Screen4.id);
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
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'name',
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(55),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'password',
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(55),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(55),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 215),
            child: Text('forger password ?'),
          ),
          SizedBox(height: 22),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(.8),
              borderRadius: BorderRadius.circular(55),
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Screen2.id);
              },
              child: Text(
                "Let's Jump",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 22),
          RichText(
            text: TextSpan(
              text: "Don't have an account ?",
              style: TextStyle(color: Colors.blue),
              children: [
                TextSpan(
                  text: " Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
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
