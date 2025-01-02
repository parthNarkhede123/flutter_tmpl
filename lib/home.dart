import 'package:flutter/material.dart';
import 'utils/logging.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                Map<String, Object> signupDetails = {
                  'method': 'email',
                  'user_id': '12345',
                  'age': 30,
                };

                // Log an event to Firebase Analytics
                loggingEvent('user_signup', signupDetails);
                logEvent('user_login', {'user_id': '1234', 'device': 'ACDF'});

                try {
                  // Intentionally throw an error to test Crashlytics
                  throw Error();
                } catch (e, stackTrace) {
                  // Log error with custom information
                  logErrorWithNotes(e, stackTrace, 'Hello AC');
                }
              },
              child: const Text("Simulate Error"),
            ),
          ],
        ),
      ),
    );
  }
}
