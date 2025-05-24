import 'package:first_actual/views/pages/home_page.dart';
import 'package:first_actual/widgets/bottom_navbar_widget.dart';
import 'package:flutter/material.dart';

 List<Widget> pages = [
    HomePage(),

  ];

class WidgetTree extends StatelessWidget {
 
  
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Test',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.amberAccent,
        // shadowColor: Colors.amberAccent,
      ),
       body: pages.elementAt(0),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}