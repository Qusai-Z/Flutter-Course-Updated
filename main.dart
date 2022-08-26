import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Practice',
              style: TextStyle(fontSize: 30),
            ),
          ),
          body: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 0, 192, 55),
              )
            ],
          )),
    );
  }
}
