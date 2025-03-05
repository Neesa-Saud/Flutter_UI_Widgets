import 'package:flutter/material.dart';

class Dismi extends StatefulWidget {
  const Dismi({super.key});

  @override
  State<Dismi> createState() => _DismiState();
}

class _DismiState extends State<Dismi> {
  List<String> item = ['person1', 'person2', 'person3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dismissible package')),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          final items = item[index];
          return Dismissible(
              key: Key(items),
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('item removed'),
                      backgroundColor: Colors.red));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('item archived'),
                      backgroundColor: Colors.green));
                }
              },
              child: Card(child: ListTile(title: Text(item[index]))));
        },
      ),
    );
  }
}
