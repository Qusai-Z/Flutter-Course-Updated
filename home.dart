import 'package:flutter/material.dart';
import 'package:young_yeader_ux/main.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('imgs/icons8-music-robot-96.png'),
            Text(
              'أهلا بك مع القارئ الصغير',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Lalezar', color: Colors.orange),
            ),
            Container(
              width: 200,
              child: Divider(
                thickness: 3,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 300,
              child: RawMaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'SIGNUP');
                },
                elevation: 5.0,
                fillColor: Colors.blueAccent,
                child: Text(
                  'إنشاء حساب',
                  style: TextStyle(
                      color: Colors.white, fontSize: 25, fontFamily: 'Lalezar'),
                ),
                padding: EdgeInsets.all(10.0),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (() {
                Navigator.pushNamed(context, 'SIGNIN');
              }),
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(
                    fontSize: 18, fontFamily: 'Lalezar', color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
