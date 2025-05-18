// import 'dart:ui_web';

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
      home : MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? val;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Test',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
        backgroundColor: Colors.amberAccent,
        // shadowColor: Colors.amberAccent,
        ),
        body: val == 0 ? Center(child: Text('This is the First Page')): Center(child: Text("This is the second Page"),),
        bottomNavigationBar: NavigationBar(destinations: [NavigationDestination(icon: Icon(Icons.access_time),
         label: 'Home',),
          NavigationDestination(icon: Icon(Icons.access_time), label: 'Alarm',),
         ],
         onDestinationSelected: (int value){
          setState(() {
            val = value;
          });
         },
         ),
      );
  }
}