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
        appBar: AppBar(
          title: Icon(Icons.menu),
        ),
        floatingActionButton: FloatingActionButton(
          //Static button

          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 24, 0, 145),
          child: Icon(Icons.add),
        ),
        body: ListView(
          //Scrollable
          children: [
            Container(
              child: Text(
                  'Ssafdaf'), // The container does'nt appear if there is no elements inside it
              width: double.infinity,
              height: 300,
              color: Colors.red,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              child: Text('Ssafdaf'),
              height: 300,
              width: double.infinity,
              color: Colors.red,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              child: Text('Ssafdaf'),
              height: 300,
              width: double.infinity,
              color: Colors.red,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              child: Text('Ssafdaf'),
              height: 300,
              width: double.infinity,
              color: Colors.red,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              child: Text('Ssafdaf'),
              height: 300,
              width: double.infinity,
              color: Colors.red,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              child: Text('Ssafdaf'),
              height: 300,
              width: double.infinity,
              color: Colors.red,
              margin: EdgeInsets.only(top: 10),
            ),
          ],
        ),
      ),
    );
  }
}
