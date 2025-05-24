import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int? val;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(destinations: [NavigationDestination(icon: Icon(Icons.access_time),
         label: 'Home',),
          NavigationDestination(icon: Icon(Icons.access_time), label: 'Alarm',),
         ],
         onDestinationSelected: (int value){
          setState(() {
            val = value;
          });
         },
         );
  }
}