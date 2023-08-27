import 'package:flutter/material.dart';
import 'package:flutter_101/bloc/counter_cubit.dart';
import 'package:flutter_101/presentation/router/app_router.dart';
import 'package:flutter_101/presentation/router/go_router.dart';
import 'package:flutter_101/presentation/screens/home_screen.dart';
import 'package:flutter_101/theme/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: lendingLightTheme,
        routerConfig: goRoute,
        // onGenerateRoute: _appRouter.onGenerateRoute,
      ),
    );
  }
}
