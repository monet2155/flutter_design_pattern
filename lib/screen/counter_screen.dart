import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/controller/counter_controller.dart';
import 'package:flutter_design_pattern/screen/another_screen.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  final CounterController controller =
      Get.put(CounterController()); // Controller 등록

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
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
              onPressed: () {
                Get.to(() => AnotherScreen());
              },
              child: Text('Go to Another Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
