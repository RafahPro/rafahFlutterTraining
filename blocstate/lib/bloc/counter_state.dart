part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterStateChanged extends CounterState {
  final int counter;

  CounterStateChanged(this.counter);
}
