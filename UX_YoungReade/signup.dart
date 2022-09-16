import 'package:flutter/material.dart';
import 'package:young_yeader_ux/main.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Text(
              'إنشاء حساب جديد',
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
                height: 20,
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
                      labelText: "تأكيد كلمة المرور",
                      fillColor: Colors.white70),
                  maxLines: 1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 330,
                child: RawMaterialButton(
                  child: Row(
                    children: [
                      Icon(Icons.arrow_drop_down),
                      Text(
                        'اختر الدولة',
                        style: TextStyle(
                            fontFamily: 'Lalezar',
                            fontSize: 20,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {},
                  elevation: 5.0,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(10.0),
                ),
              ),
              SizedBox(
                height: 30,
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
                      ' أو اختر احدى الطرق التالية',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Lalezar',
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('imgs/fb.png'),
                      radius: 30,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('imgs/twitter.png'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('imgs/google.png'),
                      radius: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'بتسجيلك أنت توافق على',
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: Text(
                      ' الأحكام والشروط',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  Text(
                    'و ',
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: Text(
                      'سياسة الخصوصية',
                      style: TextStyle(color: Colors.orange),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
