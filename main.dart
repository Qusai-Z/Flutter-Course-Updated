import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
        appBar: AppBar(title: Icon(Icons.menu)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Signed-Up');
                },
                child: Text('SIGN UP'),
                style: ElevatedButton.styleFrom(
                  elevation: 40,
                  shadowColor: Colors.red,
                ),
                onLongPress: () {
                  print('Long Press');
                },
              ),
              TextButton(
                onPressed: () {
                  print('سبحان الله');
                },
                child: Text('Click Here'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.apple),
                label: Text('Click me'),
              ),
              InkWell(
                onTap: () {
                  print('Hi kid');
                },
                child: Image(
                  image: NetworkImage(
                    'https://i.pinimg.com/originals/99/4c/ca/994ccaef22db396d4d05d569ec35a207.png',
                  ),
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
