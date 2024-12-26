import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/bloc/counter_bloc.dart';
import 'package:flutter_design_pattern/screen/counter_screen.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterBloc _bloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(bloc: _bloc),
    );
  }
}
