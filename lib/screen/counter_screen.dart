import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/provider/counter_provider.dart';
import 'package:flutter_design_pattern/screen/another_screen.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = CounterProvider.of(context).counter;

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
        onPressed: CounterProvider.of(context).increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
