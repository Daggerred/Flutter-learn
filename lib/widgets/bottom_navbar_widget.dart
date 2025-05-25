import 'package:first_actual/data/notifiers.dart';
import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  //int? val;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedPageIndex, builder: (context, selectedPage, child) {
      return
      NavigationBar(
        selectedIndex : selectedPage,
        destinations: [NavigationDestination(icon: Icon(Icons.home_max_sharp),
         label: 'Home',),
          NavigationDestination(icon: Icon(Icons.person_4_sharp), label: 'Person',),
         ],
         onDestinationSelected: (int selectedPage){
          selectedPageIndex.value = selectedPage;
         },
         );
    },);
  }
}