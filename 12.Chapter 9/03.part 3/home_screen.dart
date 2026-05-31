import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Declare empty strings to store email and age values initially.
  String email = '', age = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData(); // Call loadData() inside initState to display saved data when screen starts.
    }

// loadData() retrieves email and age from SharedPreferences.
// If data exists, it assigns values; otherwise it keeps empty strings.
  loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '' ;
    age = sp.getString('age') ?? '';
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Home',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('email'),
                Text(email.toString()), // Display the saved email inside a Row in the UI.
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('age'),
                Text(age.toString()), // Display the saved age inside a Row in the UI.
              ],
            ),
            SizedBox(height: 10),

            // On button press, clear all saved data from SharedPreferences and navigate back to LoginScreen.

            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
sp.clear();
Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(child: Text('Log Out',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
