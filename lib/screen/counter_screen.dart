import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_pattern/bloc/counter/counter_bloc.dart';
import 'package:flutter_design_pattern/bloc/counter/counter_event.dart';
import 'package:flutter_design_pattern/screen/another_screen.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AnotherScreen()),
                    );
                  },
                  child: Text('Go to Another Screen'),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterBloc.add(IncrementCounter()),
        child: Icon(Icons.add),
      ),
    );
  }
}
