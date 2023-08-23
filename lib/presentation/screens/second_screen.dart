import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                      final snackBar =
                          SnackBar(content: Text(state.incremented.toString()));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                      BlocProvider.of<CounterCubit>(context).increment();
                    },
                    child: const Icon(Icons.add))
              ],
            ),
            MaterialButton(
                onPressed: () {},
                child: Text('go to third screen'),
                color: widget.color
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
