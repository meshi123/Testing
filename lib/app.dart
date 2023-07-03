import 'package:clock_it/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'clock/bloc/clock_bloc.dart';
import 'clock/views/clocks_view.dart';

// test
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: BlocProvider<ClockBloc>(
        create: (_) =>
            ClockBloc(objectBox.getEvents())..add(const ClockEventInitialize()),
        child: const ClocksView(),
      ),
    );
  }
}
