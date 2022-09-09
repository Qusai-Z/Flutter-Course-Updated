import 'package:flutter/material.dart';

import 'package:practice/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

//This file conatins an organized code
class _HomeState extends State<Home> {
  List notes = [
    {"notes_name": "Going to gym"},
    {"description": "Go to gym at 9 AM , Chest day"},
    {"notes_name": "Going to gym"},
    {"description": "Go to gym at 9 AM , Chest day"},
    {"notes_name": "Going to gym"},
    {"description": "Go to gym at 9 AM , Chest day"},
    {"notes_name": "Going to gym"},
    {"description": "Go to gym at 9 AM , Chest day"},
    {"notes_name": "Going to gym"},
    {"description": "Go to gym at 9 AM , Chest day"},
    {"notes_name": "Going to gym"},
    {"description": "Go to gym at 9 AM, Chest day"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, i) {
          return NotesList(
            Notes: notes[i],
          );
        },
      ),
    );
  }
}

//Creating Constructure
class NotesList extends StatelessWidget {
  final Notes; // Preserved

  NotesList({this.Notes});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          '${Notes['notes_name']}'), //get the notes_name from the list upove
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.edit),
      ),
    );
  }
}
