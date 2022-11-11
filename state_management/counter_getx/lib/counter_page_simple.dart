import 'package:flutter/material.dart';
import 'counter_controller.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          init: CounterController(),
          builder: (controller) => Text(
            '${controller.count}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            tooltip: 'Increment',
            onPressed: () {
              CounterController.to.increment();
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            tooltip: 'Decrement',
            onPressed: () {
              CounterController.to.decrement();
            },
          ),
        ],
      ),
    );
  }
}
