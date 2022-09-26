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

  getSnapshot() async {
    // updates the value immediately, no need to restart the application
    FirebaseFirestore.instance.collection('users').snapshots().listen((event) {
      event.docs.forEach((element) {
        print('email : ${element.data()['email']}');
        print('name : ${element.data()['name']}');
        print('age : ${element.data()['age']}');
      });
    });
  }

  getSpecificDoc() async {
    CollectionReference userRef =
        FirebaseFirestore.instance.collection('users');
    await userRef.where('score', isEqualTo: 60).get().then(
          (value) => value.docs.forEach(
            (element) {
              print(
                element.data(),
              );
            },
          ),
        );
  }

  @override
  void initState() {
    super.initState();

    // getData(); //retrieve all docs
    // getFirstDoc();
    // getSpecificDoc();
    getSnapshot();
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
