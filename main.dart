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
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController sc = new ScrollController();

  @override
  void initState() {
    sc.addListener(
      () {
        print(sc.offset);
        print('Max scroll :${sc.position.maxScrollExtent}');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("SLIDER"),
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          controller:
              sc, //very very very imporatant:  This line catch this changes
          children: [
            ElevatedButton(
              onPressed: () {
                sc.animateTo(
                  sc.position.maxScrollExtent,
                  duration: Duration(milliseconds: 600),
                  curve: Curves.ease,
                );
              },
              child: Text(
                'Go to payment',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ...List.generate(
              // these three dotted are important to remove error
              20,
              (index) => Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: index.isEven ? Colors.purpleAccent : Colors.black,
                ),
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'BOX ${index}',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                sc.animateTo(
                  sc.position.minScrollExtent,
                  duration: Duration(milliseconds: 600),
                  curve: Curves.ease,
                );
              },
              child: Text(
                'Go back',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 94, 94, 94),
      ),
    );
  }
}
