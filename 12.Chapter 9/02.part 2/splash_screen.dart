import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/log_in_screen.dart';
import 'package:untitled/student_login_screen.dart';
import 'package:untitled/teacher_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {

    SharedPreferences sp =
    await SharedPreferences.getInstance();

    bool isLogin = sp.getBool('isLogin') ?? false;

    String userType =
        sp.getString('userType') ?? '';

    if (isLogin) {

      if (userType == 'student') {

        Timer(
          const Duration(seconds: 3),
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                const StudentLoginScreen(),
              ),
            );
          },
        );

      }

      else if (userType == 'teacher') {

        Timer(
          const Duration(seconds: 3),
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                const TeacherScreen(),
              ),
            );
          },
        );

      }

      else {

        Timer(
          const Duration(seconds: 3),
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                const HomeScreen(),
              ),
            );
          },
        );

      }

    }

    else {

      Timer(
        const Duration(seconds: 3),
            () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
              const LogInScreen(),
            ),
          );
        },
      );

    }

  }

  @override
  Widget build(BuildContext context) {

    print('object');

    return Scaffold(
      body: Image(
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
        image: const NetworkImage(
          'https://images.pexels.com/photos/32140540/pexels-photo-32140540/free-photo-of-vintage-camera-on-white-fabric-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        ),
      ),
    );
  }
}