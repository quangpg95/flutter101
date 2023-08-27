import 'package:flutter/material.dart';
import 'package:flutter_101/presentation/router/app_router.dart';
import 'package:flutter_101/presentation/screens/third_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/counter_cubit.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                    },
                    child: const Icon(Icons.exposure_minus_1)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocConsumer<CounterCubit, CounterState>(
                    listener: (context, state) {
                      // final snackBar =
                      //     SnackBar(content: Text(state.incremented.toString()));
                      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    builder: (context, state) {
                      print(state.countValue.toString());
                      return Text(
                        state.countValue.toString(),
                        style: Theme.of(context).textTheme.headlineMedium,
                      );
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();
                    },
                    child: const Icon(Icons.add))
              ],
            ),
            MaterialButton(
                onPressed: () {
                  Map<String, String> pathParameters = <String, String>{}
                    ..addEntries(List.of([const MapEntry("title", 'Third Screen')]));
                  context.pushNamed(AppRouter.thirdScreen, pathParameters: pathParameters);
                },
                color: widget.color,
                child: Text('Go to third screen'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: widget.color,
        child: const Icon(Icons.add),
      ),
    );
  }
}
