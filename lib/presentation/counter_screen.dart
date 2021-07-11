import 'package:bloc_counter/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:bloc_counter/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_counter/enums/counte_enums.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Super Simple Counter App with Bloc',
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder<CounterBloc, int>(
            builder: (BuildContext context, int state) {
              return Text(
                'Count Value: $state',
                style: xCountValTextStyle,
              );
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: const Icon(
                  Icons.add,
                  size: 40.0,
                ),
                onPressed: () {
                  _counterBloc.add(CounterEvents.increment);
                },
              ),
              const SizedBox(
                width: 20.0,
              ),
              ElevatedButton(
                child: const Icon(
                  Icons.remove,
                  size: 40.0,
                ),
                onPressed: () {
                  _counterBloc.add(CounterEvents.decrement);
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
