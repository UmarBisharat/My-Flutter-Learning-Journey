import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade500,
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Center(child: Text('hello Umar')),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWIHjjRLE7XfDw8BQnS3N0ZnrWlAYZv8hYTQ&s',
            ),
          ),
        ),
      ),
    ),
  );
}
