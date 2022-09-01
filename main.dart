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

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.menu),
        ),
        body: ListView(
          //best scrollable widget
          children: [
            Container(
              child: Text('A'),
              color: Colors.red,
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text('A'),
              color: Color.fromARGB(255, 54, 244, 76),
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text('A'),
              color: Color.fromARGB(255, 110, 110, 110),
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text('A'),
              color: Colors.red,
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text('A'),
              color: Color.fromARGB(255, 0, 0, 0),
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(20),
            ),
            Container(
              child: Text('A'),
              color: Color.fromARGB(255, 95, 54, 244),
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}
