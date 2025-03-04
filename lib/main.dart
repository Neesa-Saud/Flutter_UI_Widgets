import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/listview_builder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //this remove the debug text
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepOrangeAccent),
      home: ListviewBuilder(),
    );
  }
}
