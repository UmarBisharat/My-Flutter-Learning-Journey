# How We Made the App

This document explains how we built the Flutter app step by step using Splash Screen, Login Screen, Home Screen, and SharedPreferences.

---

## 1. Main.dart Setup

First, in `main.dart`, we set the starting screen of the app to the Splash Screen.

So instead of directly opening the Home Screen or Login Screen, the app always starts from:

* Splash Screen

This helps us decide where the user should go based on login status.

---

## 2. Splash Screen Logic

In `splash_screen.dart`, we used `initState()`.

Inside `initState()`, we call a function named `isLogin()`.

### isLogin() Method

In this method:

* We create an instance of SharedPreferences:

  * `SharedPreferences sp = await SharedPreferences.getInstance();`

* Then we check login status:

  * `bool isLogin = sp.getBool('isLogin') ?? false;`

### What this means:

We are checking whether the user is already logged in or not (data is saved or not in storage).

### If condition:

* If `isLogin == true`

  * Navigate to **Home Screen**

* If `isLogin == false`

  * Navigate to **Login Screen**

So Splash Screen works like a decision maker.

---

## 3. Login Screen Logic

In `login_screen.dart`, we first created **three TextEditingController objects**:

* emailController
* passwordController
* ageController

### Purpose of Controllers:

These controllers are used to store the data entered by the user in TextFormFields.

Each controller stores data from its respective input field.

---

### TextFormFields

We attached controllers to input fields:

* email field → emailController
* age field → ageController
* password field → passwordController

This means whatever user types is stored inside these controller objects.

---

### InkWell (Login Button)

When the user presses the login button:

We perform these actions:

* Save email using SharedPreferences:

  * `sp.setString('email', emailController.text)`

* Save age:

  * `sp.setString('age', ageController.text)`

* Set login status:

  * `sp.setBool('isLogin', true)`

### Meaning:

We store all user data locally so we can use it later in the app.

After saving data:

* Navigate to **Home Screen**

---

## 4. Home Screen Logic

In `home_screen.dart`, we first created two variables:

* email
* age

These are used to display user data.

---

### initState()

We call:

* `loadData()`

---

### loadData() Method

In this method:

* We get SharedPreferences instance
* We read saved values:

  * email
  * age

If data exists, we assign it.
If not, we use empty strings.

Then we use `setState()` to update UI.

---

## 5. Display Data

We use `Row` widgets to show:

* Email
* Age

So user can see their saved information on the Home Screen.

---

## 6. Logout Functionality

We used an InkWell button for logout.

When user presses logout:

* We clear all stored data:

  * `sp.clear()`

This removes:

* email
* age
* isLogin

Then we navigate back to:

* Login Screen

So user must log in again.

---

## Final App Flow

1. App starts → Splash Screen
2. Check login status using SharedPreferences
3. If logged in → Home Screen
4. If not logged in → Login Screen
5. User enters data → saved in SharedPreferences
6. Navigate to Home Screen
7. Data displayed from storage
8. Logout → clear storage → back to Login Screen

---

## Conclusion

This app demonstrates:

* Splash Screen navigation logic
* Login system using SharedPreferences
* Data storage and retrieval
* Basic state management using setState
* Simple authentication flow

## Pictures

<p float="left">
  <img src="https://github.com/user-attachments/assets/8417ab2d-c84d-4b9d-abdc-0937675f3ecb" width="250"/>
  <img src="https://github.com/user-attachments/assets/6c510475-2d9a-4208-9813-42ed4c058390" width="250"/>
  <img src="https://github.com/user-attachments/assets/f882d625-7a46-4d6b-83b3-e0c74211b404" width="250"/>
</p>

