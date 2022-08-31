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
  SqlDb _db = new SqlDb();
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
          child: Column(
            children: [
              MaterialButton(
                onPressed: () async {
                  int response = await _db.insertData(
                      "INSERT INTO 'notes' ('note') VALUES ('NOTE ONE')");
                  print(response);
                },
                child: Text(
                  'INSERT DATA',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.red,
              ),
              MaterialButton(
                onPressed: () async {
                  int response = await _db.updateData(
                      "UPDATE 'notes' SET 'note' = ' Note SDASD 'WHERE id = 6");
                  print("${response}");
                },
                child: Text(
                  'UPDATE DATA',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.red,
              ),
              MaterialButton(
                onPressed: () async {
                  int response =
                      await _db.deleteData("DELETE FROM 'notes' WHERE id = 4 ");
                  print("${response}");
                },
                child: Text(
                  'DELETE DATA',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.red,
              ),
              MaterialButton(
                onPressed: () async {
                  List<Map> response =
                      await _db.readData("SELECT * FROM 'notes' ");
                  print("${response}");
                },
                child: Text(
                  'READ DATA',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
