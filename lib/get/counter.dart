import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyCounterController extends GetxController {
  var counter = 0.obs;
  increment() => counter++;
}

class GetCounter extends StatelessWidget {
  const GetCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(MyCounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Get : Counter'),
      ),
      body: Center(
        child: Obx(
          () => Text("Clicks: ${c.counter}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
