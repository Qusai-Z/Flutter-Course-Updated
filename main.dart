import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var Text1 = 'Horse';
  var DropList;
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
        body: Center(
          child: DropdownButton(
            hint: Text('Choose Country'),
            items: ["KSA", "UAE", "EG", "SU"]
                .map(
                  (e) => DropdownMenuItem(
                      child: Text("${e}"),
                      value:
                          e), //to change the type from string to DropDownMenu
                )
                .toList(),
            onChanged: (val) {
              //"KSA", "UAE", "EG", "SU"
              setState(() {
                DropList = val;
              });
            },
            value: DropList,
          ),
        ),
      ),
    );
  }
}
