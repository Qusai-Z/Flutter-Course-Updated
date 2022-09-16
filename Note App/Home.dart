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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Home'),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, i) {
            return Dismissible(
              key: Key("${i}"),
              child: NotesList(
                Notes: notes[i],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.pushNamed(context, 'add_notes');
          }),
          child: Icon(Icons.add),
          backgroundColor: Theme.of(context).primaryColor,
        ),
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
    return Card(
      child: ListTile(
        subtitle: MaterialButton(
          onPressed: () {},
          color: Theme.of(context).primaryColor,
          child: Text(
            "حذف",
            style: TextStyle(color: Colors.white),
          ),
          height: 20,
        ),
        leading: Container(
          child: Image.asset(
            'imgs/notes.png',
          ),
        ),
        title: Text(
            '${Notes['notes_name']}'), //get the notes_name from the list upove
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.edit),
        ),
      ),
    );
  }
}
