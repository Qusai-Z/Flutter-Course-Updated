import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
  bool _CheckBox = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.menu),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Accept the terms'),
              Checkbox(
                  activeColor: Colors.green,
                  value: _CheckBox,
                  onChanged: (value) {
                    setState(() {
                      _CheckBox =
                          value!; //This line is very importan.  the value argument should be in the right side
                      print(_CheckBox);
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
