import 'package:flutter/material.dart';

import 'counter/counter.dart';

// class CounterApp extends MaterialApp {
//   const CounterApp({Key? key}) : super(key: key, home: const CounterPage());
// }

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Counter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CounterPage(),
    );
  }
}
