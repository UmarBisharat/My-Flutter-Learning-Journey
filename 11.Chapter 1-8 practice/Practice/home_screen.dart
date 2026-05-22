import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:untitled/about.dart';
import 'package:untitled/calculator/calculator.dart';
import 'package:untitled/counter_app.dart';
import 'package:untitled/log_in_ui.dart';
import 'package:untitled/lottery_app.dart';
import 'package:untitled/whatsapp_ui.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0F172A),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF0F172A)),
              accountName: Text('Umar Bisharat'),
              accountEmail: Text('Mobile App Developer'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRfLFM-xHBRG9v3ystKINmv4qeBz7AC6JH0w&s',
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login, color: Color(0xFF0F172A)),
              title: Text('LogIn Ui'),
              onTap: () {
                Navigator.pushNamed(context, LogInUi.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.videogame_asset, color: Color(0xFF0F172A)),
              title: Text('Lottery App'),
              onTap: () {
                Navigator.pushNamed(context, LotteryApp.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.add_circle, color: Color(0xFF0F172A)),
              title: Text(
                'Counter App',
                style: TextStyle(color: Color(0xFF0F172A)),
              ),
              onTap: () {
                Navigator.pushNamed(context, CounterApp.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.add_ic_call_sharp, color: Color(0xFF0F172A)),
              title: Text(
                'WhatsApp Ui',
                style: TextStyle(color: Color(0xFF0F172A)),
              ),
              onTap: () {
                Navigator.pushNamed(context, WhatsappUi.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate, color: Color(0xFF0F172A)),
              title: Text(
                'Calculator',
                style: TextStyle(color: Color(0xFF0F172A)),
              ),
              onTap: () {
                Navigator.pushNamed(context, Calculator.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Color(0xFF0F172A)),
              title: Text('About', style: TextStyle(color: Color(0xFF0F172A))),
              onTap: () {
                Navigator.pushNamed(context, About.id);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF0F172A),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(width: 20.0),
            const Text(
              'UMAR',
              style: TextStyle(fontSize: 43.0, color: Colors.white),
            ),

            const SizedBox(width: 20.0),

            SizedBox(
              width: 200,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Horizon',
                  color: Color(0xFF38BDF8),
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('CREATES'),
                    RotateAnimatedText('CRAFTS UI'),
                    RotateAnimatedText('VISION'),
                    RotateAnimatedText('DESIGN'),
                  ],
                  repeatForever: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
