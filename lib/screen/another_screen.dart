import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_pattern/bloc/counter/counter_bloc.dart';
import 'package:flutter_design_pattern/bloc/counter/counter_event.dart';

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Another Screen'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Counter: $state',
                  style: TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                  onPressed: () => counterBloc.add(DecrementCounter()),
                  child: Text('Decrement Counter'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
