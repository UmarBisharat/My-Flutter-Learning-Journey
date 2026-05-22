import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';

class About extends StatelessWidget {
  static const String id = 'about';
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'About',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Center(
        child: Container(
          height: 300,
          width: 300,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF1E293B),
            borderRadius: BorderRadius.circular(12),
          ),

          child: SingleChildScrollView(
            child: RichReadMoreText(
              TextSpan(
                text:
                'I made this app just for practice and revision. I hadn’t opened Android Studio for about two months because I was busy with other work, but now I’ve started learning Flutter again and built this project to refresh my concepts.',
                style: const TextStyle(color: Colors.white,fontSize: 22),
              ),
            
              settings: LineModeSettings(
                trimLines: 3,
                trimCollapsedText: ' Expand',
                trimExpandedText: ' Collapse',
                onPressReadMore: () {},
                onPressReadLess: () {},

                moreStyle: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),

                lessStyle: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}