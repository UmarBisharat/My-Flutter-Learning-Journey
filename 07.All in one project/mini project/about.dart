import 'package:flutter/material.dart';

class About extends StatefulWidget {
  static const String id = 'about';
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                'https://yt3.googleusercontent.com/OG8lFQzZva7RFLX2gSHhokd6qSd39YarlvN4PhB2n6mgPi4fkxeEnJZaWQ22hToDKafrywlbnQ=s160-c-k-c0x00ffffff-no-rj',
              ),
            ),
          ),
          SizedBox(height: 22,),
          Text('Asslam o alikum, \nThis app is purely made by Umar Bisharat.'),
          SizedBox(height: 22),
          Text('Without Using Ai',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
