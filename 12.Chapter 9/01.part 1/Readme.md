# Flutter Splash Screen App

## Part 1 - Splash Screen

In this part, we learned how to create a Splash Screen in Flutter.

A Splash Screen is the first screen that appears when the app starts. It is usually used to show the app logo, image, or loading screen before moving to the main screen of the app.

---

# Topics Covered

## 1. `initState()`

`initState()` runs only one time when the screen opens for the first time.

We used it to start the timer automatically when the splash screen appears.

---

## 2. `Timer`

We used `Timer` to wait for a few seconds before moving to another screen.

Example:

```dart
Timer(Duration(seconds: 5), () {

});
```

This means the app waits for 5 seconds and then runs the code inside it.

---

## 3. `Navigator.push()`

`Navigator.push()` is used to move from one screen to another screen.

Example:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => HomeScreen(),
  ),
);
```

This pushes the `HomeScreen` after the splash screen.

---

## 4. `MaterialPageRoute`

`MaterialPageRoute` tells Flutter which screen should open.

Inside `builder`, we provide the screen widget that we want to navigate to.

---

# Image Widget Concepts

We also used some new properties inside the `Image` widget.

Example:

```dart
Image(
  height: double.infinity,
  fit: BoxFit.fitHeight,
  image: NetworkImage(
    'image url',
  ),
)
```

---

## 1. `double.infinity`

```dart
height: double.infinity
```

This means the widget should take the maximum available height.

In our splash screen, it helps the image cover the full screen height.

---

## 2. `BoxFit.fitHeight`

```dart
fit: BoxFit.fitHeight
```

`BoxFit` controls how the image fits inside its space.

`fitHeight` means:

- The image height fills the available height
- The width adjusts automatically according to the image ratio

---

## 3. `NetworkImage`

```dart
NetworkImage('image url')
```

`NetworkImage` is used to load an image from the internet using a URL.

---

# Screens Created

We created:

- `main.dart`
- `splash_screen.dart`
- `home_screen.dart`

---

# App Flow

In `main.dart`, we set:

```dart
home: SplashScreen()
```

This means the app first opens the Splash Screen.

After a few seconds, the Splash Screen pushes the user to the Home Screen using `Navigator.push()`.

---

# Result

```text
App Starts
   ↓
Splash Screen Opens
   ↓
Timer Waits
   ↓
Navigator Pushes Home Screen
   ↓
Home Screen Opens
```

---

# Technologies Used

- Flutter
- Dart
```
