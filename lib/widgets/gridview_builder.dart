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
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                child: Center(child: Text(items[index])),
              );
            },
            itemCount: 8));
  }
}
