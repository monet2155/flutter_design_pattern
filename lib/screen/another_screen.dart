import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/mvvm/view_model/counter_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnotherScreen extends ConsumerWidget {
  const AnotherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final counterNotifier = ref.read(counterProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Counter: $counter',
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: counterNotifier.decrement,
              child: const Text('Decrement Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
