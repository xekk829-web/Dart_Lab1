import 'package:lab1_dart/lab1_dart.dart' as lab1_dart;

void main(List<String> arguments) {
  String name = 'Аскар';
  int age = 17;
  double height = 1.84;
  bool isStudent = true;

  print(name);
  print(age);
  print(height);
  print(isStudent);

  print('Привет, $name! Тебе $age лет.');
  print('Через 5 лет тебе будет ${age + 5} лет.');
  print('Рост: $height м, студент: $isStudent');

  var score = 95; // var самостоятельно определяет тип данных
  var language = 'Dart';
  print("$language: $score");

  const String appName = 'Lab1'; // нельзя вычислить
  final int startYear = 2026; // можно вычислить
  print('$appName started in $startYear');

  String? city = null;

  if (city != null) {
    // Проверка на null, Способ 1
    print(city.toUpperCase());
  }

  print(
    city?.toUpperCase(),
  ); // Способ 2 (если значение null - выведет null)

  // ?? - значение по умолчанию

  String? nickname = null;
  String display =
      nickname ?? 'Anonimous'; // если null - использовать 'Anonimous'
  print(display);

  // list - список

  List<String> fruits = ['apple', 'banana', 'grusha']; // <String> - дженерик. Если в список внести не строку, выдаст ошибку
  fruits.add('apelsin');
  print(fruits[0]);
  print(fruits.length);

  // map - словарь

  Map<String, dynamic> person = {'name': 'Аскар', 'age': 17}; // в ключах только строки (<String>), а значения разнотипные (<dynamic>)
  print(person['name']);
  person['city'] = 'Волжский';
  print(person);

  // set - множество

  Set<int> ids = {1, 2, 3, 2, 1}; // дубликаты удаляются
  print(ids);
  print(ids.length);

  // Перебор коллекций

  List<String> fruits2 = ['apple', 'banana', 'grusha'];
  for (var fruit in fruits2) {
    print(fruit);
  }
}
