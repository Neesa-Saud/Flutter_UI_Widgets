import 'package:firebase_auth/firebase_auth.dart';
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
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.leave_bags_at_home))
        ],
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Create')),
            ElevatedButton(onPressed: () {}, child: Text('Create')),
            ElevatedButton(onPressed: () {}, child: Text('Create')),
            ElevatedButton(onPressed: () {}, child: Text('Create'))
          ],
        ),
      ),
    );
  }
}
