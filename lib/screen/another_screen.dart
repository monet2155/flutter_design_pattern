import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/controller/counter_controller.dart';
import 'package:get/get.dart';

class AnotherScreen extends StatelessWidget {
  final CounterController controller = Get.find(); // 기존 등록된 Controller 사용

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() => Text(
                  'Counter: ${controller.counter}',
                  style: TextStyle(fontSize: 24),
                )),
            ElevatedButton(
              onPressed: controller.decrement,
              child: Text('Decrement Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
