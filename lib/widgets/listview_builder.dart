import 'package:flutter/material.dart';

class ListviewBuilder extends StatefulWidget {
  const ListviewBuilder({super.key});
//listViewBuilder is used for dynamic list
  @override
  State<ListviewBuilder> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
  List<String> items = ['person1', 'person2', 'person3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('List View'),
            backgroundColor: const Color.fromARGB(255, 33, 26, 3),
            elevation: 8),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(items[index]),
                  subtitle: Text('${index + 1}'),
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.arrow_forward),
                ),
              );
            }));
  }
}
