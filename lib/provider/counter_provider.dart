import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  final int counter;
  final Function() increment;

  CounterProvider({
    required Widget child,
    this.counter = 0,
    required this.increment,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }

  static CounterProvider of(BuildContext context) {
    final CounterProvider? result =
        context.dependOnInheritedWidgetOfExactType<CounterProvider>();
    assert(result != null, 'No CounterProvider found in context');
    return result!;
  }
}
