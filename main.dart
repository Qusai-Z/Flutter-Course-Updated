import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:path/path.dart';
import 'package:practice/sqlfile.dart';
import 'package:practice/test.dart';
import 'package:sqflite/sqflite.dart';
import 'package:practice/One.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: _SearchDialog(),
                );
              },
              icon: Icon(Icons.search))
        ],
        title: Text('Search'),
      ),
    );
  }
}

class _SearchDialog extends SearchDelegate {
  List names = [
    "QUSAI",
    "ZUHAIR",
    "NAWAF",
    "IBRAHIM",
    "ADEL",
    "MAJEED",
    "KHALID",
    "FAISAL",
    "AYMAN",
    "ANAS",
    "HOUSSAM",
    "OTHMAN",
    "WALID"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        }, //query empty: when ever the user press close ... return the text to empty string
        icon: Icon(Icons.close),
      ),
    ]; //Brackets are for action widget
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null); // go back when press on arrow back
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //This func to print on screen your choice of search dialog
    return Center(
      child: Container(
        margin: EdgeInsets.all(50),
        color: Color.fromARGB(255, 255, 128, 0),
        child: Text(
          "${query}",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterNames = names
        .where(
          (element) => element
              .startsWith(query), //You may use contain instead of startwith
        )
        .toList();
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: query == ""
            ? names.length
            : filterNames.length, //query where the text search dialog is stored
        itemBuilder: (context, index) => Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.orange),
          child: InkWell(
            onTap: () {
              query = query == ""
                  ? names[index]
                  : filterNames[
                      index]; //To select to any chooice if you don't wrote on search dialog
              showResults(context);
            },
            child: query == ""
                ? Text(
                    '${names[index]}',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )
                : Text(
                    '${filterNames[index]}',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}
