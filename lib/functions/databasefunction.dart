import 'package:cloud_firestore/cloud_firestore.dart';

Create(String collName, docName, name, animal, int age) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .set({'name': name, 'animal': animal, 'age': age});
  print('Database Updated');
}
