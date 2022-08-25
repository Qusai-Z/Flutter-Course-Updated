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
        body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.all(10), // all : from all directions
                // padding: EdgeInsets.symmetric(vertical: 20),  // UP and DOWN

                padding: EdgeInsets.only(left: 5, top: 10, right: 5),

                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.green, width: 20),
                  ),
                  color: Color.fromARGB(255, 65, 8, 135),
                  image: DecorationImage(
                      // kind of image: dynamic-static
                      image: NetworkImage(
                          'https://cdn.dribbble.com/users/2407143/screenshots/10349792/media/cfc2526bdfd3ae00cdf9b167ad821659.png?compress=1&resize=400x300&vertical=top'),
                      fit: BoxFit.fill),
                ),

                child: Text(
                  'FOCUS FSDFGFDBNGFDKLMNGKLDFJNHGLKJDLJFGKLDFJGKLDGJSKDNFKNLSDF',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 400,
                width: double.infinity,
                margin: EdgeInsets.all(10), // all : from all directions
                // padding: EdgeInsets.symmetric(vertical: 20),  // UP and DOWN

                padding: EdgeInsets.only(left: 5, top: 10, right: 5),

                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.green, width: 20),
                  ),
                  color: Color.fromARGB(255, 65, 8, 135),
                  image: DecorationImage(
                      // kind of images: dynamic-static
                      image: NetworkImage(
                          'https://cdn.dribbble.com/users/2407143/screenshots/10349792/media/cfc2526bdfd3ae00cdf9b167ad821659.png?compress=1&resize=400x300&vertical=top'),
                      repeat: ImageRepeat.repeatY),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
