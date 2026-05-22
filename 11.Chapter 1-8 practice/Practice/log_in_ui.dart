import 'package:flutter/material.dart';

class LogInUi extends StatelessWidget {
  static const String id = 'log_in_ui';
  const LogInUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0F172A),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color(0xFF0F172A),
      body: SafeArea(
        child: Column(
          children: [
            Text('LogIn', style: TextStyle(color: Colors.white, fontSize: 30)),
            SizedBox(height: 44),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'email',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color(0xFF1E293B),
                  filled: true,
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.white),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(55),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'password',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color(0xFF1E293B),
                  filled: true,
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.white),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(55),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Text(
                'forget password',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 60),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFF1E293B),
                boxShadow: [BoxShadow(color: Colors.white, blurRadius: 22)],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(55),
                  bottomLeft: Radius.circular(55),
                ),
              ),
              child: Center(
                child: Text(
                  'LogIn',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Don't have an account ?",
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                    text: '  SignUp',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
