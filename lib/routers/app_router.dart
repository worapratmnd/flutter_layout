import 'package:flutter/material.dart';
import 'package:flutter_layout/screens/dashboard_screen.dart';
import 'package:flutter_layout/screens/welcome_screen.dart';

class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const WelcomeScreen(),
    '/dashboard': (context) => const DashboardScreen(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final builder = routes[settings.name];
    if (builder != null) {
      return MaterialPageRoute(
        builder: (context) => builder(context),
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('404 - Page not found'),
          ),
        ),
      );
    }
  }
}
