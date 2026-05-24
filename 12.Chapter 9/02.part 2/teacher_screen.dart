import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'log_in_screen.dart';

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({super.key});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {

  String email = '';
  String age = '';
  String type = '';

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {

    SharedPreferences sp =
    await SharedPreferences.getInstance();

    email = sp.getString('email') ?? '';
    age = sp.getString('age') ?? '';
    type = sp.getString('userType') ?? '';

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher View'),
        automaticallyImplyLeading: false,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text(
                  'Email: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  email.toString(),
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text(
                  'Age: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  age.toString(),
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text(
                  'User Type: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  type.toString(),
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),

            const SizedBox(height: 22),

            InkWell(
              onTap: () async {

                SharedPreferences sp =
                await SharedPreferences.getInstance();

                await sp.clear();

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                    const LogInScreen(),
                  ),
                );
              },

              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: const Center(
                  child: Text(
                    'LogOut',
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