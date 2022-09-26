import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  getData() async {
    FirebaseFirestore.instance.collection('users').get().then((value) {
      value.docs.forEach((element) {
        print(element.data());
      });
    });
  }

  getFirstDoc() async {
    DocumentReference doc =
        FirebaseFirestore.instance.collection('users').doc('user_id(1)');

    await doc.get().then(
          (value) => print(
            value.data(),
          ),
        );
  }

  @override
  void initState() {
    super.initState();
    print('==================================');
    getData();
    print('===================================');
    getFirstDoc();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Text('Testing Firebase'),
          ],
        ),
      ),
    );
  }
}
