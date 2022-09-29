import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as f_Storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  File? myFile;
  final ImagePicker imagePicker = ImagePicker();

  String downloadURLImage = "";

  UploadImage() async {
    myFile =
        (await imagePicker.pickImage(source: ImageSource.gallery)) as File?;

    setState(() {
      myFile;
    });

    if (myFile != null) {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();

      f_Storage.Reference storageRef = f_Storage.FirebaseStorage.instance.ref();

      f_Storage.UploadTask uploadImage = storageRef.putFile(File(myFile!.path));

      print(uploadImage);
    } else {
      print('Error occueeeeeeeeeered');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                UploadImage();
              },
              child: Container(
                height: 120,
                width: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
