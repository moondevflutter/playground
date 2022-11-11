import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${context.watch<CounterProvider>().count}',
              // '${Provider.of<CounterProvider>(context).count}', // Provider.of<CounterProvider>(context) 사용.
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
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
              context.read<CounterProvider>().increment(); // read 사용.
              // Provider.of<CounterProvider>(context, listen: false).increment(); // Provider.of<CounterProvider>(context, listen: false) 사용
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            tooltip: 'Decrement',
            onPressed: () {
              context.read<CounterProvider>().decrement(); // read 사용.
            },
          ),
        ],
      ),
    );
  }
}
