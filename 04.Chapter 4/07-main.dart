import 'package:flutter/material.dart';

void main(){
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
          title: Center(child: Text('Practice App',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context , index){
                  return   ListTile(
                    leading: CircleAvatar(
                      backgroundImage : NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlLcQGrLCxHyvtdKgQ9WIt2L3jGNiz_jBs5g&s'),
                      radius: 22,
                    ),
                    title: Text('Umar Bisharat'),
                    subtitle: Text('Be Kind With EveryOne'),
                    trailing: Text('1:30 PM'),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
