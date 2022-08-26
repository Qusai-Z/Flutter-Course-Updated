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
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  child: Text('WWW'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  child: Text('WWW'),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.green,
                  child: Text('WWW'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
