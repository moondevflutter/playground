import 'package:flutter/material.dart';
import 'counter_controller.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  var _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        // child: GetX<CounterController>(
        //   // init: CounterController(),
        //   builder: (controller) => Text(
        //     '${_counterController.counter.value}',
        //     style: Theme.of(context).textTheme.headline4,
        //   ),
        // ),
        child: Text(
          '${_counterController.count.value}',
          style: Theme.of(context).textTheme.headline4,
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
              _counterController.increment;
              // CounterController.to.increment;
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            tooltip: 'Decrement',
            onPressed: () {
              _counterController.decrement;
              CounterController.to.decrement;
            },
          ),
        ],
      ),
    );
  }
}
