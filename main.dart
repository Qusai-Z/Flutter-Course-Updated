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
        body: Container(
          color: Color.fromARGB(255, 210, 210, 210),
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(10),
          child: DropdownButton(
            isExpanded:
                true, //this line solve the issue of conjection of two width.double.infinity()

            icon: Icon(Icons.arrow_downward),
            iconEnabledColor: Colors.white,
            iconSize: 30,
            hint: Container(
              width: double.infinity,
              padding: EdgeInsets.only(right: 10),
              child: Text(
                'Choose Country',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
            ),
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
