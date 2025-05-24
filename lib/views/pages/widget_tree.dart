import 'package:first_actual/widgets/bottom_navbar_widget.dart';
import 'package:flutter/material.dart';


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
      // body: val == 0 ? Center(child: Text('This is the First Page')): Center(child: Text("This is the second Page"),),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}