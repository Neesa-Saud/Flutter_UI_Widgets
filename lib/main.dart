import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/location.dart';
import 'package:firebase_core/firebase_core.dart';

// have to add firebase core in pubspec.ymal
void main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //this remove the debug text
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.deepOrangeAccent),
      home: LocationWidget(),
    );
  }
}
