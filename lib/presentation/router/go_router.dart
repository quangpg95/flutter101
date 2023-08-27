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
        const HomeScreen(title: 'Home Screen', color: Colors.greenAccent),
  ),
  GoRoute(
      name: AppRouter.secondScreen,
      path: '/second:title',
      // builder: (context, state) => SecondScreen(
      //     title: state.pathParameters['title'] ?? "", color: Colors.blueAccent),
      pageBuilder: (BuildContext context, GoRouterState state) {
        return CustomTransitionPage(
            child: SecondScreen(
                title: state.pathParameters['title'] ?? "",
                color: Colors.blueAccent),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1, 0);
              const end = Offset.zero;
              const curve = Curves.ease;

              final tween = Tween(begin: begin, end: end);
              final curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: curve,
              );

              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            });
      }),
  GoRoute(
      name: AppRouter.thirdScreen,
      path: '/third:title',
      builder: (context, state) => ThirdScreen(
          title: state.pathParameters['title'] ?? "", color: Colors.redAccent)),
]);
