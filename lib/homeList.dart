import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  //List favorites = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Center(
        child: Column(
          children: const [
            PersonProfile(
              person: 'Yuuki',
              iconPerson: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}

class PersonProfile extends StatelessWidget {
  final String person;
  final IconData iconPerson;
  //final Function navigatorFav;

  const PersonProfile({required this.person, required this.iconPerson});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(person),
      trailing: Icon(iconPerson),
      onLongPress: () {},
    );
  }
}
