import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs; // Observable 상태

  void increment() => counter++;
  void decrement() => counter--;
}
