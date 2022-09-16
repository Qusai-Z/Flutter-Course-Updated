import 'package:flutter/material.dart';
import 'package:young_yeader_ux/SignUP_SignIN/signin.dart';
import 'package:young_yeader_ux/SignUP_SignIN/signup.dart';
import 'SignUP_SignIN/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: home(),
      routes: {
        'HOME': (context) => home(),
        'SIGNIN': (context) => signin(),
        'SIGNUP': (context) => signup()
      },
    );
  }
}
