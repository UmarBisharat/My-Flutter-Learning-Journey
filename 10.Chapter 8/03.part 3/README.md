# 📱 Flutter Constructor (Required vs Optional)

In this project, I learned more about constructors in Flutter.

Previously, I was using:

* required this.title

But in this project, I removed **required** and made the parameter optional.

I did this by:

* creating a String variable → title
* giving it a default value → this.title = ''

So now the constructor looks like this:

* MyButton({this.title = ''})

Because of this, now it is my choice:

* I can pass title
* or I can leave it empty

For example:

* MyButton(title: 'logIn')
* MyButton()

Both will work without error.

## 💡 Key Learning

---

If I use **required**, then I must pass the value.
If I don’t use required and give a default value, then it becomes optional.
