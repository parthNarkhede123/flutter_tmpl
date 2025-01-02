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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA1dZfSewvyoPFL0V8T4UFX6LzcIxM5h6s',
    appId: '1:712180466105:web:18cd79b850403539ddb668',
    messagingSenderId: '712180466105',
    projectId: 'fir-analytics-demo-c621f',
    authDomain: 'fir-analytics-demo-c621f.firebaseapp.com',
    storageBucket: 'fir-analytics-demo-c621f.firebasestorage.app',
    measurementId: 'G-5BV2LNS2VT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANU4812NNi6Z5vAKyAfntGFzefgOVuVZc',
    appId: '1:712180466105:android:c96f88e7e18af4fbddb668',
    messagingSenderId: '712180466105',
    projectId: 'fir-analytics-demo-c621f',
    storageBucket: 'fir-analytics-demo-c621f.firebasestorage.app',
  );

}