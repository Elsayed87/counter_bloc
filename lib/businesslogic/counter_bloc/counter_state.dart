part of 'counter_bloc.dart';

  abstract   class CounterState extends Equatable {
  final int count;
  const CounterState({required this.count});

  @override
  // TODO: implement props
  List<Object?> get props => [count];
}

class CounterInitial extends CounterState {
  const CounterInitial({required super.count});
}


