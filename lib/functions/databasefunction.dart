import 'package:cloud_firestore/cloud_firestore.dart';

Create() async {
  await FirebaseFirestore.instance
      .collection('pets')
      .doc('tom')
      .set({'name': 'Tom', 'animal': 'Dog', 'age': 12});
  print('Database Update');
}
