import 'package:flutter/material.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

//this is for when we are getting only texxt while selecting certaiin icon at the bottom
class _BottomWidgetState extends State<BottomWidget> {
  List<Widget> widgets = [
    Text('Home'),
    Text('Search'),
    Text('Profile'),
    Text('Settings')
  ];
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nvaigation'),
      ),
      body: Center(
        child: widgets.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
