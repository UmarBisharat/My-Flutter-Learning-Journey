# Chapter 9

This chapter is divided into three parts. Through this chapter, I learned about Splash Screens, Shared Preferences, and Login/Logout functionality in Flutter.

---

## Part 1: Splash Screen

In the first part, I learned how to create a Splash Screen in Flutter.

### Topics Covered:

* Creating a separate Splash Screen widget
* Using `Timer` to display the splash screen for a few seconds
* Navigating from the Splash Screen to another screen automatically
* Understanding the app startup flow

This helped me understand how Flutter applications can display a welcome screen before loading the main content.

---

## Part 2: Shared Preferences

In the second part, I learned how to use Shared Preferences for local data storage.

### Topics Covered:

* Adding the `shared_preferences` package
* Creating an instance of Shared Preferences
* Saving data using:

  * `setString()`
  * `setInt()`
  * `setBool()`
* Reading stored data using:

  * `getString()`
  * `getInt()`
  * `getBool()`
* Removing data using:

  * `remove()`
* Understanding how local storage works in Flutter

This helped me learn how to store and retrieve user data even after the application is closed.

---

## Part 3: Login and Logout Using Shared Preferences

In the third part, I learned how to build a simple Login and Logout system using Shared Preferences.

### Topics Covered:

* Using `TextEditingController` to get user input
* Saving user data entered in text fields
* Storing login information in Shared Preferences
* Checking whether a user is logged in or not
* Redirecting users based on login status
* Implementing Logout functionality
* Removing saved login data when the user logs out

This helped me understand how authentication flow works in Flutter applications and how Shared Preferences can be used to maintain user sessions.

---

## Technologies Used

* Flutter
* Dart
* Shared Preferences Package

---

## Learning Outcomes

By completing this project, I learned:

* How Splash Screens work in Flutter
* How to save, read, and remove data using Shared Preferences
* How to create and use Shared Preferences instances
* How to use TextEditingControllers
* How to implement Login and Logout functionality
* How to manage user sessions in Flutter applications

---

### Dependency Used

```yaml
shared_preferences: ^2.2.2
```
