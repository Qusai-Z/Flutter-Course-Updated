import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Page_two.dart';
import 'Page_two.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {'PAGE_TWO': (context) => PageTwo()},
    );
  }
}
