import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/mvvm/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Another Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Counter: ${viewModel.counter}',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: viewModel.decrement,
              child: Text('Decrement Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
