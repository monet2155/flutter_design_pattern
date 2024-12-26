import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/mvvm/view_model/counter_view_model.dart';
import 'package:flutter_design_pattern/screen/counter_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterViewModel()),
      ],
      child: MaterialApp(
        home: CounterScreen(),
      ),
    ),
  );
}
