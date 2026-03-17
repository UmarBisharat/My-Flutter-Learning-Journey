import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialPinField(
                length: 6,
                onCompleted: (pin) => print('PIN: $pin'),
                onChanged: (value) => print('Changed: $value'),
                theme: MaterialPinTheme(
                  shape: MaterialPinShape.outlined,
                  cellSize: Size(56, 64),
                  borderRadius: BorderRadius.circular(12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
