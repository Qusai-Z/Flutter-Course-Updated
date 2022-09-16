import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Page_two.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SavePrefs() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("name", "Qusai");
    pref.setString("password", "0550907673");

    print('Data Saved on cache');
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
              onPressed: () {
                SavePrefs();
              },
              child: Text('Save prefs data'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'PAGE_TWO');
              },
              child: Text('Go check'),
            ),
          ],
        ),
      ),
    );
  }
}
