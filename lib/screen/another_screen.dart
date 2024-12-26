import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/provider/counter_provider.dart';

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = CounterProvider.of(context).counter;

    return Scaffold(
      appBar: AppBar(
        title: Text('Another Screen'),
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
              onPressed: CounterProvider.of(context).increment,
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
