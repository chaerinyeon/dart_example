import 'dart:convert';

void main() {
  Map<String, dynamic> map = {
    "name": "연채린",
    "age": 23,
  };

  String jsonData = jsonEncode(map);
  print(jsonData);

  String jsonSampleData = """
{
"name" : "연채린",
"age" : 23
}
""";

  var decodeData = jsonDecode(jsonSampleData);
  print(decodeData.runtimeType);
  print(decodeData);
  Human human = Human.fromJson(decodeData);
  human.toJason();
}

class Human {
  String name;
  int age;

  Human({required this.name, required this.age});

  Human.fromJson(Map<String, dynamic> map)
      : this(name: map['name'], age: map['age']);
  Map<String, dynamic> toJason() {
    return {'name': name, 'age': age};
  }
}
