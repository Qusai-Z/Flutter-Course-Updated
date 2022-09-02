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

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        //Depend on TabBarView
        length: 3, // only consider the child of the widget not the sub childs!
        child: Scaffold(
          appBar: AppBar(),
          body: TabBarView(
            //Depend on DefaultTabController
            children: [
              Container(
                color: Colors.grey,
                child: Text('QUSAI'),
              ),
              Container(
                color: Color.fromARGB(255, 89, 89, 89),
                child: Text('ZUHAIR'),
              ),
              Container(
                color: Color.fromARGB(255, 31, 31, 31),
                child: Text('RAWA'),
              )
            ],
          ),
        ),
      ),
    ); // like stories
  }
}
