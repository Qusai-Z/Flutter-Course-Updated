import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
          appBar: AppBar(title: Icon(Icons.menu)),
          body: SingleChildScrollView(
            // you can only scroll when you scroll on the column..any other place on the screen are not allowed
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  width: 90,
                  height: 90,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  width: 90,
                  height: 90,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  width: 90,
                  height: 90,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  width: 90,
                  height: 90,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  width: 90,
                  height: 90,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  width: 90,
                  height: 90,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  width: 90,
                  height: 90,
                ),
              ],
            ),
          )
          // master widget

          ),
    );
  }
}
