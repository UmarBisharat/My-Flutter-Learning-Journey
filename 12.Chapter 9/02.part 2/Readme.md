# 📱 SharedPreferences in Flutter

## 📖 Overview

In this project, I learned how to use **SharedPreferences** in Flutter to store, retrieve, and remove data locally on a device. SharedPreferences is useful for saving small amounts of data such as user preferences, login status, and app settings.

---

## 🚀 What I Learned

### 1. Creating a SharedPreferences Instance

First, I learned how to create an instance of SharedPreferences to access local storage.

```dart
SharedPreferences sp = await SharedPreferences.getInstance();
```

---

### 2. Saving Data

I learned how to store different types of data using key-value pairs.

#### Save a String

```dart
sp.setString('name', 'Umar');
```

#### Save an Integer

```dart
sp.setInt('age', 20);
```

#### Save a Boolean

```dart
sp.setBool('isLoggedIn', true);
```

---

### 3. Reading Data

I learned how to retrieve saved data using its key.

#### Read a String

```dart
print(sp.getString('name'));
```

#### Read an Integer

```dart
print(sp.getInt('age'));
```

#### Read a Boolean

```dart
print(sp.getBool('isLoggedIn'));
```

---

### 4. Removing Data

I learned how to remove stored data when it is no longer needed.

```dart
sp.remove('name');
```

This removes the value associated with the specified key.

---

## 🎯 Conclusion

Through this learning exercise, I gained a solid understanding of:

* Creating a SharedPreferences instance
* Saving data locally
* Reading stored data
* Removing stored data
* Working with different data types such as String, Integer, and Boolean

This is an important Flutter concept for managing simple local data and user preferences.
