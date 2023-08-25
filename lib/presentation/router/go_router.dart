import 'package:flutter/material.dart';
import 'package:flutter_101/presentation/router/app_router.dart';
import 'package:flutter_101/presentation/screens/home_screen.dart';
import 'package:flutter_101/presentation/screens/second_screen.dart';
import 'package:flutter_101/presentation/screens/third_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRoute = GoRouter(routes: <GoRoute>[
  GoRoute(
      name: AppRouter.homeScreen,
      path: '/',
      builder: (context, state) =>
          const HomeScreen(title: 'Home Screen', color: Colors.greenAccent)),
  GoRoute(
      name: AppRouter.secondScreen,
      path: '/secondScreen:title:color',
      builder: (context, state) =>
          const SecondScreen(title: 'Second Screen', color: Colors.greenAccent)),
  GoRoute(
      name: AppRouter.thirdScreen,
      path: '/thirdScreen:title:color',
      builder: (context, state) =>
          const ThirdScreen(title: 'Home Screen', color: Colors.greenAccent)),
]);
