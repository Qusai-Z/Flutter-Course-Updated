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
        body: Container(
          color: Colors.red,
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // notice that the container height depends on column width

            children: [
              Text(
                'AL HAMD LLAH',
                style: (TextStyle(color: Colors.white, fontSize: 10)),
              ),
              Text(
                'AL HAMD LLAH',
                style: (TextStyle(color: Colors.white, fontSize: 10)),
              ),
              Text(
                'AL HAMD LLAH',
                style: (TextStyle(color: Colors.white, fontSize: 10)),
              ),
              Text(
                'AL HAMD LLAH',
                style: (TextStyle(color: Colors.white, fontSize: 10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
