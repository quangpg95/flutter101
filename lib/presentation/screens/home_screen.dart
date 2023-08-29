import 'package:flutter/material.dart';
import 'package:flutter_101/extension/hex_color.dart';
import 'package:flutter_101/presentation/router/app_router.dart';
import 'package:flutter_101/presentation/screens/second_screen.dart';
import 'package:flutter_101/theme/colors.dart';
import 'package:flutter_101/theme/typography.dart';
import 'package:flutter_101/utils/app_images.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/counter_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

        leading: IconButton(
          icon: SvgPicture.asset(AppImages.icBack),
          color: defaultTextColor ,
          onPressed: (){},
        ),
        backgroundColor: Colors.white,
        title: Text(style: KiotVietTextStyle.titleXL, 'Đăng ký vay'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Nhập số điện thoại',
                ),
              ),
            ),
            Text(
              'Nhu cầu vay vốn của bạn',
              style: KiotVietTextStyle.headlineM,
            ),
            Text(
              '200.000.000',
              style: KiotVietTextStyle.titleXL.copyWith(color: primaryColor500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                    },
                    child: Icon(Icons.exposure_minus_1)),
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
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevate Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline Button'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Tiếp tục'),
            ),
            FilledButton(
              onPressed: null,
              child: const Text('Tiếp tục'),
            ),
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
