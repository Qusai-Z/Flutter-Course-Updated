import 'package:flutter/material.dart';

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
          title: Text(
            'Practice',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: 
            Row(
              children: [
                Text('AAAAAAAA'),
                VerticalDivider(
                  color: Colors.black,
                  width: 20,
                ),
                Text('BBBBBBBBB'),
                VerticalDivider(
                  color: Colors.black,
                  
                  width: 20,
                  
                ),
                Text('CCCCCCCCCC'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
