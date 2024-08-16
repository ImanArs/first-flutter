import 'package:flutter/material.dart';
import './consts/people.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final List<Person> youngPeople = people.where((person) => person.age < 26).toList();
    final List<Person> middleAgedPeople = people.where((person) => person.age >= 26 && person.age < 34).toList();
    final List<Person> olderPeople = people.where((person) => person.age >= 34).toList();

    return DefaultTabController(
      length: 3, // Количество вкладок
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PeopleList(people: youngPeople),
            PeopleList(people: middleAgedPeople),
            PeopleList(people: olderPeople),
          ],
        ),
      ),
    );
  }
}

class PeopleList extends StatelessWidget {
  final List<Person> people;

  const PeopleList({required this.people});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        final person = people[index];
        return ListTile(
          title: Text('Name: ${person.name}'),
          subtitle: Text('Age: ${person.age}, Gender: ${person.gender}'),
        );
      },
    );
  }
}