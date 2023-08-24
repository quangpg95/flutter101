import 'package:flutter/material.dart';
import 'package:flutter_101/presentation/screens/home_screen.dart';
import 'package:flutter_101/presentation/screens/second_screen.dart';
import 'package:flutter_101/presentation/screens/third_screen.dart';

class AppRouter {
  static const String homeScreen = '/';
  static const String secondScreen = '/second';
  static const String thirdScreen = '/third';

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homeScreen:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(
                  title: 'HomeScreen',
                  color: Colors.blueAccent,
                ));
      case secondScreen:
        return MaterialPageRoute(
            builder: (_) => const SecondScreen(
                  title: 'SecondScreen',
                  color: Colors.greenAccent,
                ));
      case thirdScreen:
        return MaterialPageRoute(
            builder: (_) => const ThirdScreen(
                  title: 'ThirdScreen',
                  color: Colors.redAccent,
                ));
      default:
        return null;
    }
  }
}
