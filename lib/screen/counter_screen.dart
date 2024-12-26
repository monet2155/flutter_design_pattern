import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/mvvm/view_model/counter_view_model.dart';
import 'package:flutter_design_pattern/screen/another_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final counterViewModel = ref.read(counterProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Counter: $counter',
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
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterViewModel.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
