import 'package:firebase_demo/features/crash_analytics/presentation/pages/crash_analytics_view.dart';
import 'package:firebase_demo/features/home/presentation/pages/home_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/crash-analytics',
      builder: (context, state) => CrashAnalyticsView(),
    ),
  ],
);
