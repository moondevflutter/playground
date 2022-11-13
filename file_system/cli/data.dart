// file -> string -> json -> map -> object
import 'dart:io';
import 'dart:convert';

class User {
  String name;
  String email;
  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];
}

// create function for json file to map
Map<String, dynamic> jsonFileToMap(String filePath) {
  // // read file
  // final file = File(filePath);
  // // read file as string
  // final fileString = file.readAsStringSync();
  // // convert string to map
  // final fileMap = json.decode(fileString);
  // return fileMap;
  return json.decode(File(filePath).readAsStringSync());
}

void main() {
  // var jsonString = '{"name": "John Smith","email": "john@example.com"}';
  // Map<String, dynamic> user = jsonDecode(jsonString);

  // print('Howdy, ${user['name']}!');
  // print('We sent the verification link to ${user['email']}.');

  // print(jsonFileToMap("data.json"));
  final data = jsonFileToMap("data.json");
  final user = User.fromJson(data);
  print('Howdy, ${data['name']}!');
  print('Email, ${user.email}!');

  // replace string
  String gfg = "Welcome GeeksForGeeks";

  //replace substring of the given string
  String result = gfg.replaceAll("GeeksForGeeks", "Geek!");

  print(result);
}
