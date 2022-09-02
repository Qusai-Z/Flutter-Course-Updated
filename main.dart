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
  List mobile = [
    {"name": "s21 ultra", "year": "2021", "price": "4400 SR"},
    {"name": "iphone 13", "year": "2021", "price": "5400 SR"},
    {"name": "s22 ultra", "year": "2022", "price": "4900 SR"},
    {"name": "Huwaui ", "year": "2021", "price": "4400 SR"},
    {"name": "pro ultra", "year": "2021", "price": "44700 SR"},
    {"name": "gg ultra", "year": "2021", "price": "440660 SR"},
    {"name": "fs ultra", "year": "2021", "price": "440980 SR"},
    {"name": "sdsfxx ultra", "year": "2021", "price": "440890 SR"},
    {"name": "sdfd ultra", "year": "2021", "price": "44900 SR"},
    {"name": "sddd ultra", "year": "2021", "price": "449900 SR"},
    {"name": "sd sadultra", "year": "2021", "price": "4478900 SR"},
    {"name": "sss ultra", "year": "2021", "price": "440780 SR"},
    {"name": "pro ultra", "year": "2021", "price": "44700 SR"},
    {"name": "gg ultra", "year": "2021", "price": "440660 SR"},
    {"name": "fs ultra", "year": "2021", "price": "440980 SR"},
    {"name": "sdsfxx ultra", "year": "2021", "price": "440890 SR"},
    {"name": "sdfd ultra", "year": "2021", "price": "44900 SR"},
    {"name": "sddd ultra", "year": "2021", "price": "449900 SR"},
    {"name": "sd sadultra", "year": "2021", "price": "4478900 SR"},
    {"name": "sss ultra", "year": "2021", "price": "440780 SR"},
  ];
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          elevation: 500,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text('Ahmed'),
                accountEmail: Text('sdfsdf'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
