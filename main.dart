import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice2/servers/remote_server.dart';
import 'dart:convert';

import 'models/Posts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Posts>? posts;
  var isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    posts = await RemoteServer().getPosts();

    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text('HTTTP'),
          ),
        ),
        body: Center(
          child: Visibility(
            visible: isLoaded,
            child: ListView.builder(
              itemCount: posts?.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Text(posts![index].title),
                  padding: EdgeInsets.all(10),
                );
              },
            ),
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
