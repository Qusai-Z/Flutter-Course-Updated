import 'package:flutter/material.dart';
import 'package:path/path.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 50,
                    decoration: InputDecoration(
                      labelText: 'عنوان الملاحظة',
                      prefixIcon: Icon(Icons.book),
                    ),
                  ),
                  TextFormField(
                    maxLines: 3,
                    maxLength: 400,
                    decoration: InputDecoration(
                      labelText: 'الوصف',
                      prefixIcon: Icon(Icons.description),
                    ),
                  ),
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      return ShowImageSheet(context);
                    },
                    child: Text(
                      'أضف صورة',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: Text(
                      'أضف الملاحظة',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

ShowImageSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 250,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Text(
                'اختر مكان الصورة',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Divider(
                thickness: 2,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: InkWell(
                  onTap: (() {}),
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo_outlined,
                        size: 50,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'من الاستديو',
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: InkWell(
                  onTap: (() {}),
                  child: Row(
                    children: [
                      Icon(
                        Icons.camera,
                        size: 50,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'التقط من الكاميرا',
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
