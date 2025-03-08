import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/alert.dart';
import 'package:flutter_application_1/widgets/columns.dart';
import 'package:flutter_application_1/widgets/dismissible.dart';
import 'package:flutter_application_1/widgets/rows.dart';
import 'package:flutter_application_1/widgets/snackbar.dart';

class BottomWidget2 extends StatefulWidget {
  const BottomWidget2({super.key});

  @override
  State<BottomWidget2> createState() => _BottomWidget2State();
}

//this is for when we are getting only texxt while selecting certaiin icon at the bottom
class _BottomWidget2State extends State<BottomWidget2> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nvaigation'),
      ),
      body: PageView(
        controller: pageController,
        children: [AlertWidget(), Dismi(), Rows(), Columns(), SnackWidget()],
        onPageChanged: onItemTapped,
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
        unselectedItemColor: Colors.red,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
