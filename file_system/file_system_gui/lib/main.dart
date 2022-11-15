import 'package:flutter/material.dart';

import 'dart:io';
// import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  String root = r"D:\moon\dev\withLang\inFlutter\playground";
  String name = "lib";
  String paths = "paths";

  void _incrementCounter() {
    setState(() {
      paths = getFolders(root, name);
      // paths = "clicked";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$paths',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// List<String>? getFolders(String root, String name) {
String getFolders(String root, String name) {
  var folders = <String>[];
  // var files =
  //     Directory(root).listSync(recursive: true).where((e) => e is Directory);
  // for (var file in files) {
  //   if (file.path.replaceAll(r"\", "/").split("/").last == name) {
  //     folders.add(file.path);
  //   }
  // }
  folders.add(root);
  folders.add(name);
  return "getFolders: " + folders.join('-');
  // print(folders.join('-'));
  // // return folders;
  // return folders.join('-');
}
