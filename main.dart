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

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Welcome',
            ),
            centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.orange,
              indicatorWeight: 6,
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.home),
                      Text('Screen 1'),
                    ],
                  ), //1
                ),
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.architecture),
                      Text('Screen 2'),
                    ],
                  ), //1 //2
                ),
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.architecture),
                      Text('Screen 2'),
                    ],
                  ), //1 //2
                ),
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.architecture),
                      Text('Screen 2'),
                    ],
                  ), //1 //2
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(color: Colors.green), //1
              Container(color: Colors.red), //2
              Container(color: Colors.blue), //3
              Container(color: Colors.yellow), //4
            ],
          ),
        ),
      ),
    ); // like stories
  }
}
