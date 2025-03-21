import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/pets.dart';
import 'package:flutter_application_1/functions/databasefunction.dart';

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
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Create('pets', 'kitty', 'jerry', 'cat', 5);
                  },
                  child: Text('Create')),
              ElevatedButton(
                  onPressed: () {
                    Update('pets', 'Tom', 'age', 14);
                  },
                  child: Text('Update')),
              ElevatedButton(
                  onPressed: () {
                    delete('pets', 'kitty'); //will delete the kitty
                  },
                  child: Text('Retrive')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PetdList()));
                  },
                  child: Text('Delete'))
            ],
          ),
        ),
      ),
    );
  }
}
