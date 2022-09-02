import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:path/path.dart';
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
  GlobalKey<ScaffoldState> Scaf = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // build : is a widget for design

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: Scaf,
        appBar: AppBar(
          title: IconButton(
            icon: Icon(Icons.dangerous),
            onPressed: () {
              Scaf.currentState?.openEndDrawer();
            },
          ),
        ),
        drawerScrimColor: Colors.grey.withOpacity(0.9),
        endDrawer: Drawer(
          elevation: 500,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text('Ahmed'),
                accountEmail: Text('sdfsdf'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
              ),
            ],
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('OPEN DRAWER'),
            onPressed: () {
              Scaf.currentState?.openEndDrawer();
            },
          ),
        ),
      ),
    );
  }
}
