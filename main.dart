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
  String? Country;
  String? City;
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
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              RadioListTile(
                title: Text('KSA'),
                subtitle: Text('Asia'),
                secondary: Icon(Icons.flag),
                activeColor: Colors.red,
                selected: Country == "ksa" ? true : false,
                value: "ksa",
                groupValue: Country,
                onChanged: ((value) {
                  setState(() {
                    Country = value as String?;
                  });
                }),
              ),
              RadioListTile(
                title: Text('UAE'),
                subtitle: Text('Asia'),
                secondary: Icon(Icons.flag),
                value: "uae",
                activeColor: Colors.red,
                selected: Country == "uae" ? true : false,
                groupValue: Country,
                onChanged: ((value) {
                  setState(() {
                    Country = value as String?;
                  });
                }),
              ),
              RadioListTile(
                title: Text('EG'),
                subtitle: Text('Africa'),
                secondary: Icon(Icons.flag),
                activeColor: Colors.red,
                selected: Country == "egypt" ? true : false,
                value: "egypt",
                groupValue: Country,
                onChanged: ((value) {
                  setState(() {
                    Country = value as String?;
                  });
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
