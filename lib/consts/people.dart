class Person {
  final String name;
  final int age;
  final String gender;

  Person({required this.name, required this.age, required this.gender});
}

final List<Person> people = [
  Person(name: 'Alice', age: 25, gender: 'Female'),
  Person(name: 'Bob', age: 30, gender: 'Male'),
  Person(name: 'Charlie', age: 35, gender: 'Male'),
  Person(name: 'Diana', age: 28, gender: 'Female'),
  Person(name: 'Eve', age: 22, gender: 'Female'),
];