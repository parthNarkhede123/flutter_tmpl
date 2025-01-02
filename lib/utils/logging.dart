import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

/// Utility to log errors to Firebase Crashlytics with custom notes.
void logErrorWithNotes(
    dynamic error, StackTrace stackTrace, String customMessage) {
  FirebaseCrashlytics.instance.recordError(
    error,
    stackTrace,
    fatal: true,
    reason: customMessage,
    information: [
      'Additional context or details about the error',
      'App Version 2.0',
    ],
  );
}

void logEvent(String eventName, Map<String, dynamic> parameters) {
  FirebaseCrashlytics.instance
      .log('Event: $eventName with parameters: $parameters');
}

/// Log a simple event to Firebase Analytics (you can extend as needed).

FirebaseAnalytics analytics = FirebaseAnalytics.instance;

void loggingEvent(String eventName, Map<String, Object> parameters) {
  analytics.logEvent(
    name: eventName,
    parameters: parameters,
  );
}
