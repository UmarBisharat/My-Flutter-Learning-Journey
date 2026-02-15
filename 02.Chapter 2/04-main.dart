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
        backgroundColor: Colors.pink.shade100,
        body: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            SafeArea(child: Center(child: Text('Log In',style: TextStyle(color: Colors.pinkAccent,fontSize: 45,fontWeight: FontWeight.bold),))), SizedBox(height: 22),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: 'log in',
      fillColor: Colors.pinkAccent.withOpacity(.3),
      filled: true,
      prefixIcon: Icon(Icons.email_outlined),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.pink,width: 3),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
  ),
),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'password',
                  fillColor: Colors.pinkAccent.withOpacity(.3),
                  filled: true,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink,width: 3),
                    borderRadius: BorderRadius.circular(50),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 210),
              child: Text('Forget Password',style: TextStyle(color: Colors.pink),),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.pinkAccent.withOpacity(.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                border: Border.all(
                  color: Colors.white70,
                  width: 3,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 22,
                    color: Colors.pink
                  )
                ]
              ),
              child: Center(child: Text('Log In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),
            ),
            SizedBox(height: 20,),
            RichText(text: TextSpan(
              text: "don't have a account ?  ",style: TextStyle(color: Colors.pink),
              children: [
                TextSpan( text: "Sign up",
               style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationThickness:2),
                ),
              ]
            ),
            ),
          ],
        ),
      ),
    );
  }
}
