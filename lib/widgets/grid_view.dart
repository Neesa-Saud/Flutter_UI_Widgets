import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('List View'),
            backgroundColor: const Color.fromARGB(255, 33, 26, 3),
            elevation: 8),
        body: Container(
            child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
          ),
          children: [
            Card(child: Center(child: Text('fruit'))),
            Card(child: Center(child: Text('fruit'))),
            Card(child: Center(child: Text('fruit'))),
            Card(child: Center(child: Text('fruit'))),
            Card(child: Center(child: Text('fruit'))),
            Card(child: Center(child: Text('fruit'))),
          ],
        )));
  }
}
