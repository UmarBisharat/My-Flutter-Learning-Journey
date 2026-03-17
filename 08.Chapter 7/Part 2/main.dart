import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            badges.Badge(
              // Badge styling
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle, // square shape
                borderRadius: BorderRadius.circular(8), // rounded corners
                badgeColor: Colors.red, // optional: change color
              ),

              // Badge animation using modern factory constructor
              badgeAnimation: badges.BadgeAnimation.scale(
                curve: Curves.easeInOut, // optional smooth curve
              ),

              // The content of the badge
              badgeContent: Text('1', style: TextStyle(color: Colors.white)),

              // The widget the badge is attached to
              child: Icon(Icons.shopping_cart, size: 30),
            ),
            SizedBox(width: 22),
          ],
        ),
        body: Center(
          child: badges.Badge(
            // Badge styling
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.circle, // square shape
              borderRadius: BorderRadius.circular(8), // rounded corners
              badgeColor: Colors.red, // optional: change color
            ),

            // Badge animation using modern factory constructor
            badgeAnimation: badges.BadgeAnimation.scale(
              curve: Curves.easeInOut, // optional smooth curve
            ),

            // The content of the badge
            badgeContent: Text('99', style: TextStyle(color: Colors.white)),

            // The widget the badge is attached to
            child: Icon(Icons.notifications, size: 50),
          ),
        ),
      ),
    );
  }
}
