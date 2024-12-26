import 'package:flutter_riverpod/flutter_riverpod.dart';

// ViewModel: CounterNotifier
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() => state++;
  void decrement() => state--;
}

// 수동으로 Provider 정의
final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});
