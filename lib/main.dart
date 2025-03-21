import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/widgets/database.dart';
import 'package:flutter_application_1/widgets/login.dart';
import 'firebase_options.dart';

// have to add firebase core in pubspec.ymal
//have to add plugin in pubspec.ymal so to import firebase cloud store libraries
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return DatabaseTime();
          } else {
            return Day24Authentication();
          }
        },
      ),
    );
  }
}
