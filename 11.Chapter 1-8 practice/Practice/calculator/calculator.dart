import 'package:flutter/material.dart';
import 'package:untitled/calculator/button.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  static const String id = 'calculator';
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Text(
                      userInput,
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      answer,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 23),
                      Button(
                        num: 'DEL',
                        onPress: () {
                          if (userInput.isNotEmpty) {
                            userInput = userInput.substring(
                              0,
                              userInput.length - 1,
                            );

                            setState(() {});
                          }
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: 'AC',
                        onPress: () {
                          userInput = '';
                          answer = '';
                          setState(() {

                          });
                        },
                      ),

                      SizedBox(width: 10),
                      Button(num: '%', onPress: () {
                        userInput += '%';
                        setState(() {});
                      }),
                      SizedBox(width: 10),
                      Button(num: '/', onPress: () {
                        userInput += '/';
                        setState(() {});
                      }, color: Colors.amber),
                      SizedBox(width: 10),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 23),
                      Button(
                        num: '7',
                        onPress: () {
                          userInput += '7';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '8',
                        onPress: () {
                          userInput += '8';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '9',
                        onPress: () {
                          userInput += '9';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: 'x',
                        onPress: () {
                          userInput += 'x';
                          setState(() {});
                        },
                        color: Colors.amber,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 23),
                      Button(
                        num: '4',
                        onPress: () {
                          userInput += '4';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '5',
                        onPress: () {
                          userInput += '5';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '6',
                        onPress: () {
                          userInput += '6';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '-',
                        onPress: () {
                          userInput += '-';
                          setState(() {});
                        },
                        color: Colors.amber,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 23),
                      Button(
                        num: '1',
                        onPress: () {
                          userInput += '1';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '2',
                        onPress: () {
                          userInput += '2';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '3',
                        onPress: () {
                          userInput += '3';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '+',
                        onPress: () {
                          userInput += '+';
                          setState(() {});
                        },
                        color: Colors.amber,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 23),
                      Button(
                        num: '+/-',
                        onPress: () {
                          if (userInput.startsWith('-')) {
                            userInput = userInput.substring(1);
                          } else {
                            userInput = '-$userInput';
                          }
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '0',
                        onPress: () {
                          userInput += '0';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '.',
                        onPress: () {
                          userInput += '.';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      Button(
                        num: '=',
                        onPress: () {
                          equalPress();
                        },
                        color: Colors.amber,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void equalPress() {
    String finalInput = userInput.replaceAll('x', '*').replaceAll('%', '/100');

    Parser p = Parser();

    Expression exp = p.parse(finalInput);

    ContextModel cm = ContextModel();

    double result = exp.evaluate(EvaluationType.REAL, cm);

    answer = result.toString();

    setState(() {});
  }
}
