# 📱 Flutter Constants Practice

This project is a small practice to learn how to use a **constants file** in Flutter.

## 🎯 What I Learned

In this project, I learned that we can create a separate Dart file (like `constant.dart`) and store:

* Colors 🎨
* TextStyles ✍️

Then we can use them anywhere in the app.

---

## 📂 constant.dart

```dart
import 'package:flutter/material.dart';

const Color myChosenColor = Colors.purple;
const Color mySelectedColor = Colors.pink;

const myTextStyle = TextStyle(
  fontSize: 40,
  color: myChosenColor,
  fontWeight: FontWeight.bold,
);
```

---

## 📱 screen_1.dart

```dart
import 'package:flutter/material.dart';
import 'package:practice/constant.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Umar', style: myTextStyle),
            Text('Umar', style: myTextStyle),
            Text('Umar', style: myTextStyle),
            Text('Umar', style: myTextStyle),
            Text('Umar', style: myTextStyle),
          ],
        ),
      ),
    );
  }
}
```

---

## 💡 Key Concept

Define once → Use everywhere

---

## ✅ Benefits

* Clean code 🧹
* No repetition 🔁
* Easy to update styles ⚡

---

## 📌 Status

✔️ Learning Flutter basics
✔️ Practicing clean code structure

---
