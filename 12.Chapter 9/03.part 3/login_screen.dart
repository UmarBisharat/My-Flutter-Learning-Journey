import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

//Create three controllers that will manage and store the text entered in the email, password, and age fields.

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Log In',style: TextStyle(color: Colors.white),)
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: emailController, // Stores the user's email input.
        decoration: InputDecoration(
          hintText: 'email',
        ),
      ),
    ),
    SizedBox(height: 1),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: ageController, // Stores the user's age input.
        decoration: InputDecoration(
          hintText: 'age',
        ),
      ),
    ),
    SizedBox(height: 1),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: passwordController, // Stores the user's passwords input.
        decoration: InputDecoration(
          hintText: 'password',
        ),
      ),
    ),
SizedBox(height: 10),
InkWell(
  onTap: () async {
SharedPreferences sp = await SharedPreferences.getInstance();
sp.setString('email', emailController.text.toString()); // Save the text entered in the email TextFormField using the emailController object.
sp.setString('age', ageController.text.toString()); // Save the text entered in the age TextFormField using the ageController object.
sp.setBool('isLogin', true);
Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  },
  child: Center(
    child: Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      child: Center(child: Text('Log In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
    ),
  ),
),
  ],
),
    );
  }
}
