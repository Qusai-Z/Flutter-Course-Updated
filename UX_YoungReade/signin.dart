import 'package:flutter/material.dart';
import 'package:young_yeader_ux/main.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(fontSize: 25, fontFamily: 'Lalezar'),
            ),
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              Image.asset('imgs/icons8-music-robot-96.png'),
              Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      labelText: "أدخل البريد الإلكتروني",
                      fillColor: Colors.white70),
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      labelText: "أدخل كلمة المرور",
                      fillColor: Colors.white70),
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 300,
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {},
                  elevation: 5.0,
                  fillColor: Colors.orange,
                  child: Text(
                    'هيا بنا!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Lalezar'),
                  ),
                  padding: EdgeInsets.all(10.0),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' ليس لديك حساب ؟',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Lalezar',
                        color: Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: (() {}),
                      child: Text(
                        '  أنشئ حساب الاّن ',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Lalezar',
                            color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
