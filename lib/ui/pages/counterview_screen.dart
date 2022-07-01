import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../businesslogic/counter_bloc/counter_bloc.dart';
import '../widget/widgets.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter Bloc App',
          style: appBarStyle(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sizedHight(),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.count.toString(),
                  style: textStyle(),
                );
              },
            ),
            sizedHight(),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(DecrementEvent());
              },
              child: const Icon(Icons.remove),
            ),
            sizedHight(),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(IncrementEvent());
              },
              child: const Icon(Icons.add),
            ),
            sizedHight(),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(RestCounterEvent());
              },
              child: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
