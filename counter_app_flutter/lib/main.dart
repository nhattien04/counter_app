import 'package:counter_app_flutter/blocs/counter_bloc.dart';
import 'package:counter_app_flutter/views/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  // Chay trong Terminal
  // flutter run --no-sound-null-safety


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is Counter App!',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Counter App'),
        ),
        body: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(), // Hanh dong
          child: CounterPage(), // Giao dien
        ),
      ),
    );
  }
}