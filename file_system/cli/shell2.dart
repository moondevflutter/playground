import 'dart:async';

import 'package:process_run/shell.dart';

Future main() async {
  // This works on Windows/Linux/Mac

  var shell = Shell();

  await shell.run('''
dir
  ''');
}
