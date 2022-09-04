import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:path/path.dart';
import 'package:practice/sqlfile.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

// Switching between screens
class _MyAppState extends State<MyApp> {
  String TEXT = "";
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  onChanged: (value) {
                    print("$value");
                  },
                  onEditingComplete: () {
                    //after pressing done

                    print("Submitted Succissfully");
                  },
                  onFieldSubmitted: (value) {
                    TEXT = value;
                  },
                ),
              ),
              Text("$TEXT"),
            ],
          ),
        ),
      ),
    ); // like stories
  }
}
