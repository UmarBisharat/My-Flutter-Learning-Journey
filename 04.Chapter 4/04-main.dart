import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Practice App', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Divider(color: Colors.black, thickness: 2),
            SizedBox(height: 100, child: VerticalDivider(thickness: 2,color: Colors.black)),
            Divider(color: Colors.black, thickness: 2),

            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu3-_TbUInL975rAfMjR83kQAjePhVRRJFfw&s',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
