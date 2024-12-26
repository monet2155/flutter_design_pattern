import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/provider/counter_provider.dart';
import 'package:flutter_design_pattern/screen/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: _counter,
      increment: _incrementCounter,
      child: MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}
