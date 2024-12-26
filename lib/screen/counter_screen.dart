import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/bloc/counter_bloc.dart';
import 'package:flutter_design_pattern/screen/another_screen.dart';

class CounterScreen extends StatelessWidget {
  final CounterBloc bloc;

  CounterScreen({required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => AnotherScreen(bloc: bloc)),
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
        onPressed: bloc.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
