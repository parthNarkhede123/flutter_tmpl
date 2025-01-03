import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_demo/router/router.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'utils/logging.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart'; // Import the necessary package

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Set the URL strategy to Path (this removes the # in the URL)
    setUrlStrategy(PathUrlStrategy()); // This will remove the '#' in the URL

    // Initialize Firebase with the platform-specific options
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
      // Send the error to Firebase Crashlytics with a custom message
      logErrorWithNotes(error, stack, 'Platform-level error occurred');
      return true; // Return true to prevent Flutter from reporting the error
    };

    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  } catch (e, stackTrace) {
    // Handle any error that occurs during Firebase initialization
    logErrorWithNotes(e, stackTrace, 'Error during Firebase initialization');
    // You can also log this error to Firebase Crashlytics manually
    FirebaseCrashlytics.instance.recordError(e, stackTrace);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
