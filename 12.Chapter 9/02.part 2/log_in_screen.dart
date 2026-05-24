import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/student_login_screen.dart';
import 'package:untitled/teacher_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 22),

            TextFormField(
              keyboardType: TextInputType.number,
              controller: ageController,
              decoration: const InputDecoration(
                hintText: 'Age',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 22),

            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 22),

            InkWell(
              onTap: () async {

                SharedPreferences sp =
                await SharedPreferences.getInstance();

                await sp.setString(
                  'email',
                  emailController.text,
                );

                await sp.setString(
                  'age',
                  ageController.text,
                );

                await sp.setString(
                  'userType',
                  'teacher',
                );

                // admin, user, teacher, student

                await sp.setBool(
                  'isLogin',
                  true,
                );

                if (sp.getString('userType') == 'teacher') {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const TeacherScreen(),
                    ),
                  );

                }

                else if (sp.getString('userType') == 'student') {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const StudentLoginScreen(),
                    ),
                  );

                }

                else {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const StudentLoginScreen(),
                    ),
                  );

                }

              },

              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,

                child: const Center(
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}