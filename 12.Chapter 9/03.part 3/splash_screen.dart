import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }


   void isLogin() async {
     SharedPreferences sp  = await SharedPreferences.getInstance();
     bool isLogin = sp.getBool('isLogin') ?? false ; // This checks whether isLogin was saved before.

     // If logged in → HomeScreen, otherwise → LoginScreen.

     if(isLogin) {
       Timer(Duration(seconds: 3), () {
         Navigator.push(
             context, MaterialPageRoute(builder: (context) => HomeScreen()));
       });
     }else{
       Timer(Duration(seconds: 3),(){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
       });
     }
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://images.pexels.com/photos/32140540/pexels-photo-32140540/free-photo-of-vintage-camera-on-white-fabric-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
    );
  }
}
