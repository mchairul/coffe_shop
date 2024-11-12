import 'package:coffe_shop/screens/dashboard.dart';
import 'package:coffe_shop/screens/launcher.dart';
import 'package:coffe_shop/screens/walk_through.dart';
import 'package:flutter/material.dart';

class RouteApp {
  static const String pageLauncher = '/';
  static const String pageWalkThrough = '/walkthrough';
  static const String pageDashboard = '/dashboard';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case pageLauncher:
        return MaterialPageRoute(
            builder: (context) => const Launcher()
        );
      case pageWalkThrough:
        return MaterialPageRoute(
            builder: (context) => const WalkThrough()
        );
      case pageDashboard:
        return MaterialPageRoute(
            builder: (context) => const Dashboard()
        );
      default:
        throw const FormatException('Not Found');
    }
  }
}
