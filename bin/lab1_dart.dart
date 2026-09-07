import 'package:lab1_dart/lab1_dart.dart' as lab1_dart;

String greet(String name) {
  return 'Привет, $name!';
}

int square(int x) => x * x;
double half(double x) => x / 2;

void describePet({
  required String
  name, // required — параметр обязателен, без него ошибка компиляции
  String species = 'кот', // Параметры без required — опциональны, можно задать значение по умолчанию
  int age = 0,
}) {
  print('$name - $species, возраст $age');
}

String repeat(
  String text, [
  int times = 2, // Квадратные скобки [] обозначают необязательный позиционный параметр
]) {
  String result = '';
  for (int i = 0; i < times; i++) {
    result += text;
  }
  return result;
}

void main(List<String> arguments) {
  // step 3
  print(greet('Артём'));
  print(greet('Мария'));
  print(square(100));
  print(half(100));
  describePet(name: 'Барсик', age: 3);
  describePet(name: 'Шарик', species: 'пёс');
  print(repeat('ha'));
  print(repeat('ha', 3));

  List<int> numbers = [3, 1, 4, 1, 5, 9];
  numbers.sort((a, b) => b - a); // сортировка по убыванию
  print(numbers);

  List<String> names = ['Артём', 'Мария', 'Иван'];
  List<String> upper = names
      .map((name) => name.toUpperCase())
      .toList();
  print(upper);

  // step 2
  print('');
  print('');
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
