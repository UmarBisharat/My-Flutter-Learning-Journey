import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.setString('name', 'umar');
              sp.setInt('age', 21);
              sp.setBool('isLogIn', false);

              print(sp.getString('name'));
              print(sp.getInt('age'));
              print(sp.getBool('isLogIn'));

              sp.remove('name');
              print(sp.getString('name')); // checking that name is removed or not
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child: Center(child: Text('click')),
            ),
          )
        ],
      ),
    );
  }
}
