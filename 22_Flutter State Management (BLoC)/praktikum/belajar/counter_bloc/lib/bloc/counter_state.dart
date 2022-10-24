part of 'counter_bloc.dart';

class CounterState extends Equatable {
  // set nilai
  int value = 0;
  CounterState(this.value);

  @override
  List<Object> get props => [value];
}
