import 'dart:ffi';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:path/path.dart';
import 'package:practice/Add_Edit/Add.dart';
import 'package:practice/auth/login.dart';
import 'package:practice/auth/signup.dart';
import 'package:practice/sqlfile.dart';

import 'package:sqflite/sqflite.dart';

import 'package:flutter/src/widgets/scroll_controller.dart';

import 'home/Home.dart';

void main() {
  runApp(
    const MyWidget(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      routes: {
        "login": (context) => Login(), // The main page

        "signup": (context) => SignUp(),
        "home": (context) => Home(),
        "add_notes": (context) => AddNotes()
      },
    );
  }
}



