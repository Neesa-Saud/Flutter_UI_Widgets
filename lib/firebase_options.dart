// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDqymB4SWgalNxlAiPZaoBt1Zv48YppBn8',
    appId: '1:925917836351:web:3b5c211c13eaa70db6348a',
    messagingSenderId: '925917836351',
    projectId: 'flutter-project1-2982e',
    authDomain: 'flutter-project1-2982e.firebaseapp.com',
    storageBucket: 'flutter-project1-2982e.firebasestorage.app',
    measurementId: 'G-GTZM0CK94R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKP8iQCexOMhrzmL2J74hSbOSOs6iNY8U',
    appId: '1:925917836351:android:6aa79e0d376fea7fb6348a',
    messagingSenderId: '925917836351',
    projectId: 'flutter-project1-2982e',
    storageBucket: 'flutter-project1-2982e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUXUbY0lr2sxX23F60Znf28pvLIs-6ABw',
    appId: '1:925917836351:ios:0f8518369e49ae3eb6348a',
    messagingSenderId: '925917836351',
    projectId: 'flutter-project1-2982e',
    storageBucket: 'flutter-project1-2982e.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDqymB4SWgalNxlAiPZaoBt1Zv48YppBn8',
    appId: '1:925917836351:web:1657de4c0b437dcbb6348a',
    messagingSenderId: '925917836351',
    projectId: 'flutter-project1-2982e',
    authDomain: 'flutter-project1-2982e.firebaseapp.com',
    storageBucket: 'flutter-project1-2982e.firebasestorage.app',
    measurementId: 'G-YFW2FXQ7GS',
  );
}
