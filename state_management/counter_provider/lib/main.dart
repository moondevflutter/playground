import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'counter.dart';
import 'counter_page.dart';
import 'counter_provider.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Counter',
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//       home: App(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      // ChangeNotifierProvider로 변경.
      create: (_) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Counter',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: CounterPage(),
      ),
    );
  }
}
