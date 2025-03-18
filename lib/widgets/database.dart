import 'package:flutter/material.dart';

class DatabaseTime extends StatefulWidget {
  const DatabaseTime({super.key});

  @override
  State<DatabaseTime> createState() => _DatabaseTimeState();
}

class _DatabaseTimeState extends State<DatabaseTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database Options"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
