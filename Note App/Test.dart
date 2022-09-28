import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  CollectionReference userReff = FirebaseFirestore.instance.collection("users");

  CollectionReference userReff3 =
      FirebaseFirestore.instance.collection("notes");

  List fs_users = [];

  Stream<QuerySnapshot<Map<String, dynamic>>> getDataViaStream() =>
      FirebaseFirestore.instance.collection('notes').snapshots();

  DisplayData() async {
    var response = await userReff.get();

    response.docs.forEach((element) {
      setState(() {
        fs_users.add(
          element.data(),
        );
      });
    });
  }

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

  Add_Data() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    await users.doc('user_id(3)').set({
      //Accept List

      "name": "Faris",
      "age": "25",
      "email": "Faris@gmail.com",
      "gender": "male",
    });
  }

  getSpecificDoc() async {
    CollectionReference userRef2 =
        FirebaseFirestore.instance.collection('users');
    await userRef2.where('score', isEqualTo: 60).get().then(
          (value) => value.docs.forEach(
            (element) {
              print(
                element.data(),
              );
            },
          ),
        );
  }

  Update_data() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    await users.doc('user_id(3)').update({'age': 30});
  }

  Update_trans() async {
    DocumentReference userDoc =
        FirebaseFirestore.instance.collection('users').doc('user_id(1)');

    FirebaseFirestore.instance.runTransaction((transaction) async {
      DocumentSnapshot docSnap = await transaction.get(userDoc);

      if (docSnap.exists) {
        transaction.update(userDoc, {
          "phone": '055555',
        });
      } else {
        print('Failed');
      }
    });
  }

  @override
  void initState() {
    super.initState();

    // getData(); //retrieve all docs
    // getFirstDoc();
    // getSpecificDoc();
    // getSnapshot();
    // Add_Data();
    // Update_data();
    Update_trans();
    DisplayData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing Firebase'),
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: getDataViaStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text('${snapshot.data!.docs[i]['title']}'),
                    subtitle: Text('${snapshot.data!.docs[i]['description']}'),
                    trailing: Text('${snapshot.data!.docs[i]['user_id']}'),
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return Text('Error occuerd!');
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
