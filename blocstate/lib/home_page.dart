import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bloc'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Center(child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is CounterInitial) {
                return const Text('0');
              } else if (state is CounterStateChanged) {
                return Text(state.counter.toString());
              } else {
                return const Text('0');
              }
            },
          )),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
                },
                child: const Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
                },
                child: const Text('Decrement'),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(ResetEvent());
                },
                child: const Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
