import 'dart:io';
import 'dart:convert';
import 'package:args/args.dart';

// dart command line arg

// https://pub.dev/packages/args

Future<void> subprocess(String cmd, List<String> args) async {
  await Process.run(cmd, args, runInShell: true).then((result) {
    stdout.write(result.stdout);
    stderr.write(result.stderr);
  });
}

void main(List<String> args) async {
  // // STEP 0. command line arg
  final parser = ArgParser()
    ..addOption('config', abbr: 'c', defaultsTo: 'config.json')
    // ..addFlag('verbose', abbr: 'v', defaultsTo: false)
    ..addFlag('help', abbr: 'h', defaultsTo: false);

  final results = parser.parse(args);
  if (results['help']) {
    print(parser.usage);
    return;
  }

  // // STEP 1. load config file
  final config = json.decode(File(results['config']).readAsStringSync());
  print(config);

  // // STEP 2. create flutter project
  // Methodv 1. subprocess
  // Process.run('flutter create --platform=${results["platform"]} ${results["project"]}', [], runInShell: true)
  //     .then((result) {
  //   stdout.write(result.stdout);
  //   stderr.write(result.stderr);
  // });

  // // Method 2. read config file, make default files
  // await subprocess(
  //     'flutter create --platform=${config["platform"]} ${config["project"]}',
  //     []);
  // // await Process.run(
  // //         'flutter create --platform=${config["platform"]} ${config["project"]}',
  // //         [],
  // //         runInShell: true)
  // //     .then((result) {
  // //   stdout.write(result.stdout);
  // //   stderr.write(result.stderr);
  // // });

  // // // STEP 3. replace files
  // // // 1. .xml, .gradle 파일 수정
  final root = config["root"] + config["project"] + "/";
  // for (var replacement in config["replacements"]) {
  //   var path = root + replacement["path"];
  //   for (var repl in replacement["repls"]) {
  //     // File(path).readAsStringSync().replaceAll(repl[0], repl[1]);
  //     File(path).writeAsStringSync(
  //         File(path).readAsStringSync().replaceAll(repl[0], repl[1]));
  //   }
  // }

  // // STEP 4. copy template files
  for (var file in config["files"]["copy"]) {
    final src = file[0].replaceAll("/", "\\");
    final dst = (root + file[1]).replaceAll("/", "\\");
    print('copy $src $dst');
    await subprocess('copy $src $dst', []);
  }

  // // STEP 5. delete files
  for (var file in config["files"]["delete"]) {
    print('del ${root + file}');
    // await subprocess('copy ${file[0]} ${file[1]}', []);
  }
}
