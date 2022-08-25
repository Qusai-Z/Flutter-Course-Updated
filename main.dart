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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(10), // all : from all directions
              // padding: EdgeInsets.symmetric(vertical: 20),  // UP and DOWN

              padding: EdgeInsets.only(left: 5, top: 10, right: 5),
              alignment: Alignment.bottomCenter,

              decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.green, width: 20),
                  ),
                  color: Color.fromARGB(255, 65, 8, 135),
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 20),
                  ]),
              child: Text(
                'AL HAMD LLAH',
                style: (TextStyle(color: Colors.white, fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
