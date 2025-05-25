import 'package:first_actual/data/notifiers.dart';
import 'package:first_actual/views/pages/home_page.dart';
import 'package:first_actual/views/pages/profile_page.dart';
import 'package:first_actual/widgets/bottom_navbar_widget.dart';
import 'package:flutter/material.dart';

 List<Widget> pages = [
    HomePage(),
    ProfilePage()
  ];

class WidgetTree extends StatelessWidget {
 
  
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            isDarkNotifier.value = !isDarkNotifier.value;
          }, icon: ValueListenableBuilder(valueListenable: isDarkNotifier, builder: (context, isDarkModeselected, child) {
            return Icon(
              isDarkModeselected ? Icons.dark_mode_outlined : Icons.light_mode_outlined
            );
          },))
        ],
        title: Text(
          'Test',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.amberAccent,
        // shadowColor: Colors.amberAccent,
      ),
       body: ValueListenableBuilder(valueListenable: selectedPageIndex, builder: (context, selectedPage, child) {
         return pages.elementAt(selectedPage);
       },),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}