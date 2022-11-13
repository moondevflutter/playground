import 'dart:io';

// dart main function with command line arguments

// https://github.com/dart-lang/args

void main() async {
  // // subprocess
  // var result = await Process.run('ls', ['-l']);
  // print(result.stdout);

  // subprocess copy file in windows
  // var result = await Process.run('copy', ['test.txt', 'test2.txt']);

  // Creates dir/ and dir/subdir/.
  // var directory = await Directory('C:/MoonDev/withLang/inFlutter/playground')
  //     .create(recursive: true);
  // print(directory.path);

  // // Get the system temp directory.
  // var systemTempDir = Directory.systemTemp;

  // // List directory contents, recursing into sub-directories,
  // // but not following symbolic links.
  // await for (var entity
  //     in systemTempDir.list(recursive: true, followLinks: false)) {
  //   print(entity.path);
  // }
  // // List directory contents, recursing into sub-directories,
  // // but not following symbolic links.
  // await for (var entity in Directory('C:/MoonDev/withLang/inFlutter/playground')
  //     .list(recursive: true, followLinks: false)) {
  //   print(entity.path);
  // }

  var files = Directory('C:/MoonDev/withLang/inFlutter/playground')
      .listSync(recursive: true)
      // .where((e) => e is File);
      .where((e) => e is Directory);
  for (var file in files) {
    print(file.path);
  }

  // final myDir = Directory('dir');
  // var isThere = await myDir.exists();
  // print(isThere ? 'exists' : 'non-existent');

  // NOTE: read file
  // // async
  // var file = File(
  //     'C:/MoonDev/withLang/inFlutter/playground/file_system/cli/on_io.dart');
  // var contents = await file.readAsString();
  // print(contents);

  // // sync
  // var contents = File(
  //         'C:/MoonDev/withLang/inFlutter/playground/file_system/cli/on_io.dart')
  //     .readAsStringSync();
  // print(contents);

  // NOTE: write file
  // var file2 = File(
  //     'C:/MoonDev/withLang/inFlutter/playground/file_system/cli/on_io2.dart');
  // await file2.writeAsString(contents);

  // File('C:/MoonDev/withLang/inFlutter/playground/file_system/cli/on_io2.dart')
  //     .writeAsStringSync(contents);
}
