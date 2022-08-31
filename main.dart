import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:practice/sqlfile.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool KSA = false;
  bool UAE = false;
  bool USA = false;
  bool JAPAN = false;

  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.menu),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'CHOOSE COUNTRY',
                style: TextStyle(fontSize: 50),
                textAlign: TextAlign.center,
              ),
              CheckboxListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Text('KSA'),
                  subtitle: Text('ASIA'), // appear under the title
                  secondary: Icon(Icons.flag), //apear at the left of the title
                  isThreeLine:
                      true, // boolean method that organize the checkboxlisttitle row
                  activeColor: Color.fromARGB(255, 0, 184, 25),
                  selected: KSA, //run the app and you will know
                  value: KSA,
                  onChanged: (value) {
                    setState(() {
                      KSA =
                          value!; //This line is very importan.  the value argument should be in the right side
                    });
                  }),
              CheckboxListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Text('UAE'),
                  subtitle: Text('ASIA'), // appear under the title
                  secondary: Icon(Icons.flag), //apear at the left of the title
                  isThreeLine:
                      true, // boolean method that organize the checkboxlisttitle row
                  activeColor: Color.fromARGB(255, 0, 0, 0),
                  selected: UAE,
                  value: UAE,
                  onChanged: (value) {
                    setState(() {
                      UAE =
                          value!; //This line is very importan.  the value argument should be in the right side
                    });
                  }),
              CheckboxListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Text('USA'),
                  subtitle: Text('EUROPE'), // appear under the title
                  secondary: Icon(Icons.flag), //apear at the left of the title
                  isThreeLine:
                      true, // boolean method that organize the checkboxlisttitle row
                  activeColor: Color.fromARGB(255, 184, 0, 0),
                  selected: USA,
                  value: USA,
                  onChanged: (value) {
                    setState(() {
                      USA =
                          value!; //This line is very importan.  the value argument should be in the right side
                    });
                  }),
              CheckboxListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Text('JAPAN'),
                  subtitle: Text('ASIA'), // appear under the title
                  secondary: Icon(Icons.flag), //apear at the left of the title
                  isThreeLine:
                      true, // boolean method that organize the checkboxlisttitle row
                  activeColor: Color.fromARGB(255, 255, 255, 255),
                  selected: JAPAN, // -_-
                  value: JAPAN,
                  onChanged: (value) {
                    setState(() {
                      JAPAN =
                          value!; //This line is very importan.  the value argument should be in the right side
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
