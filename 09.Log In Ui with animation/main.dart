import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
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
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
          title: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                WavyAnimatedText('Welcome'),
                WavyAnimatedText('Log In'),
              ],
              isRepeatingAnimation: true,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 22),
            Center(
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                ),
              ),
            ),
            SizedBox(height: 22),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedTextField(
                animationType: Animationtype.typer,
                hintTextStyle: const TextStyle(
                  color: Colors.pinkAccent, // ✅ hint text color
                  overflow: TextOverflow.ellipsis,
                ),
                hintTexts: ['email', 'account name'],
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.pinkAccent, // ✅ icon color
                  ),
                  filled: true,
                  fillColor: Colors.pinkAccent.withOpacity(
                    0.1,
                  ), // ✅ light background

                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.pinkAccent, // ✅ border color
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.pinkAccent, // ✅ focus border
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.pinkAccent, // ✅ normal border
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  contentPadding: const EdgeInsets.all(12),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedTextField(
                animationType: Animationtype.typer,
                hintTextStyle: const TextStyle(
                  color: Colors.pinkAccent, // ✅ hint text color
                  overflow: TextOverflow.ellipsis,
                ),
                hintTexts: ['password'],
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.pinkAccent, // ✅ icon color
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.pinkAccent,
                  ),
                  filled: true,
                  fillColor: Colors.pinkAccent.withOpacity(
                    0.1,
                  ), // ✅ light background

                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.pinkAccent, // ✅ border color
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.pinkAccent, // ✅ focus border
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.pinkAccent, // ✅ normal border
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  contentPadding: const EdgeInsets.all(12),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: SizedBox(
                width: 200,
                height: 40,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.pink,
                    shadows: [
                      Shadow(
                        blurRadius: 7.0,
                        color: Colors.white,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [FlickerAnimatedText('forget password')],
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(55),
                border: Border.all(color: Colors.pinkAccent, width: 2),
                boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 10)],
              ),

              child: Container(
                child: SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    child: Center(
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          ScrambleAnimatedText(
                            'Log In',
                            speed: const Duration(milliseconds: 200),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            RichText(
              text: TextSpan(
                text: "already have an account ?",
                style: TextStyle(color: Colors.pink),
                children: [
                  TextSpan(
                    text: " Sign Up",
                    style: TextStyle(
                      color: Colors.pink,
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
