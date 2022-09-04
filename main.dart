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
  List<Widget> Pages = [
    Container(
      width: double.infinity,
      height: 300,
      color: Colors.orange,
    ),
    Container(
      width: double.infinity,
      height: 300,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      height: 300,
      color: Colors.red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        reverse: true,
        children: [
          Pages.first,
          Pages.last,
        ],
      ),
    ); // like stories
  }
}
