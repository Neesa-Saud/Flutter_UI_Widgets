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
            child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('List Item 1'),
                subtitle: Text('Subtitle 1'),
                leading: Icon(Icons.airplay_rounded),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('List Item 2'),
                subtitle: Text('Subtitle 2'),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('List Item 3'),
                subtitle: Text('Subtitle 3'),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('List Item 4'),
                subtitle: Text('Subtitle 4'),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('List Item 5'),
                subtitle: Text('Subtitle 5'),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('List Item 6'),
                subtitle: Text('Subtitle 6'),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        )));
  }
}
