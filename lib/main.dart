import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent,brightness: Brightness.dark)
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Test',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
        backgroundColor: Colors.amberAccent,
        // shadowColor: Colors.amberAccent,
        ),
        bottomNavigationBar: NavigationBar(destinations: [NavigationDestination(icon: Icon(Icons.abc_sharp),
         label: 'Home',),
         NavigationDestination(icon: Icon(Icons.access_time), label: 'Alarm'),
         ],
         ),
      ),
    );
  }
}