import 'package:flutter/material.dart';
import 'package:bloc_counter/presentation/counter_screen.dart';
import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (BuildContext context) => CounterBloc(),
        child: CounterScreen(),
      ),
    );
  }
}
