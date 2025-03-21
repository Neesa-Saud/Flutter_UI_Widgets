import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PetdList extends StatefulWidget {
  const PetdList({super.key});

  @override
  State<PetdList> createState() => _PetdListState();
}

class _PetdListState extends State<PetdList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Pets'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(
            //streambuilder listens the data from data base and retrive it
            stream: FirebaseFirestore.instance.collection('pets').snapshots(),
            builder: (context, petSnapshot) {
              if (petSnapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                final petDocs = petSnapshot.data!.docs; //check for null safety
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: ListTile(
                        title: Text(petDocs[index]['name']),
                        subtitle: Text(petDocs[index]['animal']),
                      ),
                    );
                  },
                  itemCount: petDocs.length,
                );
              }
            }), //this will listen to the database
      ),
    );
  }
}
