import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    int counter = 0;
    on<CounterEvent>((event, emit) {
      // TODO: implement event handler
      if (event is IncrementEvent) {
        counter++;
        emit(CounterStateChanged(counter));
      } else if (event is DecrementEvent) {
        counter--;
        emit(CounterStateChanged(counter));
      } else if (event is ResetEvent) {
        counter = 0;
        emit(CounterStateChanged(counter));
      }
    });
  }
}
