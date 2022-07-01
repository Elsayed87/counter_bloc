import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(count: 0)) {
    on<CounterEvent>((event, emit) {

      if (event is DecrementEvent) {
        emit(CounterInitial(count: state.count-1));
      }
      if (event is IncrementEvent) {
        emit(CounterInitial(count: state.count+1));
      }
      if (event is RestCounterEvent) {
        emit(const CounterInitial(count: 0));
      }
    });
  }
}
