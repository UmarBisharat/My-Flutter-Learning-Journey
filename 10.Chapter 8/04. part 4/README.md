# 🧮 Flutter Calculator App

This is a simple calculator app built using Flutter.
I created this project to practice UI design and understand how logic works behind calculator operations.

---

## 📦 Dependencies Used

In this project, I added a package in `pubspec.yaml`:

* **math_expressions: ^3.1.0**

This package helped me evaluate mathematical expressions like addition, subtraction, multiplication, division, and percentages.

---

## 📚 What I Learned

### 🔹 1. What is `var`

* I learned how to use `var` to store data without defining its type.
* Example:

  ```dart
  var userInput = '';
  var answer = '';
  ```
* Dart automatically understands the data type based on the value.

---

### 🔹 2. State Management using `setState`

* I learned how to update UI dynamically using `setState()`.
* Whenever a button is pressed, UI updates instantly.

---

### 🔹 3. Handling User Input

* Learned how to store user input in a variable.
* Append values like numbers and operators using:

  ```dart
  userInput += '7';
  ```

---

### 🔹 4. Using Custom Widgets

* I created a reusable button widget (`MyButton`).
* This helped me understand:

  * Code reusability
  * Cleaner UI structure

---

### 🔹 5. Working with Rows & Columns

* I used `Row` and `Column` to design the calculator layout.
* Learned how to align buttons properly.

---

### 🔹 6. Using InkWell for Click Events

* I used `InkWell` to detect button taps.
* It helped me handle user interactions.

---

### 🔹 7. Expression Evaluation

* Learned how to:

  * Convert user input (`x` → `*`, `%` → `/100`)
  * Parse expressions using `math_expressions`
  * Handle errors using `try-catch`

---

### 🔹 8. Basic Error Handling

* If the input is invalid, the app shows:

  ```
  Error
  ```

---

## 🚀 Features

* Basic calculator operations (+, -, ×, ÷)
* Percentage support
* Clear (AC) and Delete (DEL) functionality
* Real-time input display
* Clean and simple UI

---

## 🎯 Purpose

This project is mainly for learning and practice.
It helped me understand Flutter UI, user interaction, and basic logic building.

---

✨ I will keep improving this app as I learn more in Flutter.

# Project picture

<img width="221" height="457" alt="Screenshot 2026-03-19 043505" src="https://github.com/user-attachments/assets/f9a12477-2ab8-4216-aeac-28a9be0fcf5f" />
