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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('KSA'),
                  ),
                  Radio(
                      value: "ksa",
                      groupValue: Country,
                      onChanged: (val) {
                        setState(() {
                          Country = val as String?;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('UAE'),
                  ),
                  Radio(
                      value: "uae",
                      groupValue: Country,
                      onChanged: (val) {
                        setState(() {
                          Country = val as String?;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('EG'),
                  ),
                  Radio(
                      value: "egypt",
                      groupValue: Country,
                      onChanged: (val) {
                        setState(() {
                          Country = val as String?;
                        });
                      }),
                ],
              ),
              Text(
                'CHOOSE CITY',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Mecca'),
                  ),
                  Radio(
                      value: "ksa",
                      groupValue: City,
                      onChanged: (val) {
                        setState(() {
                          City = val as String?;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Dubai'),
                  ),
                  Radio(
                      value: "uae",
                      groupValue: City,
                      onChanged: (val) {
                        setState(() {
                          City = val as String?;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Cairo'),
                  ),
                  Radio(
                      value: "egypt", // it's like identifier for a radio button
                      groupValue: City,
                      onChanged: (val) {
                        setState(() {
                          City = val as String?; //null safety
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
