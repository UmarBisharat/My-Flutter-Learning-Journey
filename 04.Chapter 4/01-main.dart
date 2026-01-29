import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Center(child: Text('Practice',style: TextStyle(color: Colors.white),)),
          backgroundColor: Colors.blue,
        ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Center(
      child: Container(
        height: 300,
        width: 300,
        transform: Matrix4.rotationZ(.1),
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(-50),
            topRight: Radius.circular(-50),
            bottomRight: Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
          image: DecorationImage(image: NetworkImage('https://media.licdn.com/dms/image/v2/D5603AQF2fddZtAUPGw/profile-displayphoto-scale_200_200/B56Zpe26yCIcAY-/0/1762528047657?e=2147483647&v=beta&t=8JjvUIw5c067JuXzjAryra-MQCCzrQYNcR8QEJ6jgpE'),fit:
          BoxFit.cover,
          ),
          color: Colors.orange,
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 100,
            )
          ]
        ),
       // child: Center(child: Text('Log In')),
      ),
    ),
  ],
),
      ),
    );
  }
}

 ********************************************************** Definitions ********************************************************
Transform = 📘 Simple Theory: transform: Matrix4.rotationZ(0.1)
transform is a property of Container
It rotates the Container
Rotation happens on the Z-axis (screen)
Value is in radians
0.1 means a small tilt
It affects appearance only, not layout or spacing
*******************************************************************************************************************************
Margin = 📘 Simple Theory: margin: EdgeInsets.all(0)
margin is a property of Container
It creates invisible space around the Container
EdgeInsets.all(0) → no extra space on any side
Useful if you want exactly no margin
******************************************************************************************************************************
Border = 📘 Simple Theory: border: Border.all(color: Colors.black, width: 5)
border is a property of Container’s decoration (BoxDecoration)
Border.all() → creates a border on all four sides of the container
color: Colors.black → the border’s color
width: 5 → thickness of the border in pixels
*********************************************************************************************************************************
image = 📘 Simple Theory: image: DecorationImage(...)
image is a property of Container’s decoration (BoxDecoration)
DecorationImage → lets you show an image inside the container
NetworkImage('URL') → loads an image from the internet
fit: BoxFit.cover → makes the image cover the entire container, possibly cropping edges
*********************************************************************************************************************************
boxShadow = 📘 Simple Theory: boxShadow: [BoxShadow(...)]
boxShadow is a property of Container’s decoration (BoxDecoration)
BoxShadow → adds a shadow effect behind the container
color: Colors.red → shadow color
blurRadius: 100 → how blurry/spread out the shadow is (bigger = softer and larger shadow)
