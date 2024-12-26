import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/mvvm/model/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel _counterModel = CounterModel(0);

  int get counter => _counterModel.value;

  void increment() {
    _counterModel.increment();
    notifyListeners(); // UI 갱신
  }

  void decrement() {
    _counterModel.decrement();
    notifyListeners(); // UI 갱신
  }
}
