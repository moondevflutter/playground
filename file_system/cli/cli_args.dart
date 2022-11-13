import 'dart:io';
import 'package:args/args.dart';

void main(List<String> args) {
  final parser = ArgParser()
    ..addOption('name', abbr: 'n')
    ..addOption('output', abbr: 'o', defaultsTo: 'out')
    ..addFlag('verbose', abbr: 'v', defaultsTo: false)
    ..addFlag('help', abbr: 'h', defaultsTo: false);

  final results = parser.parse(args);
  if (results['help']) {
    print(parser.usage);
    return;
  }

  if (results.wasParsed('name')) {
    print('name: ${results['name']}');
  }

  print('verbose: ${results['verbose']}');
}
