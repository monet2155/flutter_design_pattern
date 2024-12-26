import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/bloc/counter_bloc.dart';

class AnotherScreen extends StatelessWidget {
  final CounterBloc bloc;

  AnotherScreen({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Screen'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: bloc.counterStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Counter: ${snapshot.data}',
                  style: TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                  onPressed: bloc.decrement,
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
