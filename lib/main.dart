import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'home.dart';
import 'utils/logging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Set up error handling for both Flutter errors and platform-specific errors
  FlutterError.onError = (FlutterErrorDetails details) {
    // Send the error to Firebase Crashlytics
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  };

  // Catch platform errors (e.g., Android or iOS-specific errors)
  PlatformDispatcher.instance.onError = (error, stack) {
    // Send the error to Firebase Crashlytics with custom message
    logErrorWithNotes(error, stack, 'Platform-level error occurred');
    return true; // Return true to prevent Flutter from reporting the error
  };
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
