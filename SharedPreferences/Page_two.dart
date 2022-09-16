import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';

class PageTwo extends StatefulWidget {
  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  var username;

  var password;

  getPrefs() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      username = pref.getString("name");
      password = pref.getString("password");
    });

    print('Done');
  }

  RemovePrefs() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('name');
    pref.remove('password');
    print('Data removed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Shared preference'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() {
                getPrefs();
              }),
              child: Text('Show data on cache'),
            ),
            Text('${username}'),
            Text('${password}'),
            SizedBox(
              height: 200,
            ),
            ElevatedButton(
              onPressed: (() {
                RemovePrefs();
              }),
              child: Text('Delete data on cache'),
            ),
          ],
        ),
      ),
    );
  }
}
