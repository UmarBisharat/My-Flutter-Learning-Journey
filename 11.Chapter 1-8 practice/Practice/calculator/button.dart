import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String num;
  final VoidCallback onPress;
  final Color color;
  const Button({super.key,required this.num, required this.onPress, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
      height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Center(child: Text(num,style: TextStyle(color: Colors.white,fontSize: 20),)),
      ),
    );
  }
}
