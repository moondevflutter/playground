// Is In String
bool isInString(String str, String keyword) {
  return str.contains(keyword);
}

// Find In List
List<String> findInList(List<String> list, String keyword) {
  return list
      .where((element) => element.toLowerCase().contains(keyword.toLowerCase()))
      .toList();
}

// Find In Map
List<Map<String, String>> findInMap(
    List<Map<String, String>> map, String key, String val) {
  return map
      .where(
          (element) => element[key]!.toLowerCase().contains(val.toLowerCase()))
      .toList();
}

// Find In Object
class User {
  String name;
  String age;

  User({
    required this.name,
    required this.age,
  });
}

List<User> findInUser(List<User> users, String key, String val) {
  return users
      .where((user) => user.name.toLowerCase().contains(val.toLowerCase()))
      .toList();
}

void main() {
  // Is In String
  print(isInString("abcde", "cd"));

  // Find In List
  List<String> data = <String>["abc", "def", "ghi", "abcd"];
  List<String> results = findInList(data, "ab");
  print(results);

  // Find In Map
  List<Map<String, String>> map = <Map<String, String>>[
    {"name": "one", "age": "1"},
    {"name": "two", "age": "2"},
    {"name": "three", "age": "3"}
  ];

  List<Map<String, String>> results2 = findInMap(map, "name", "o");
  print(results2);

  // Find In Object
  User user = User(name: "moon", age: "52");
}
