import 'package:flutter/material.dart';
import 'package:project_p_2/prototype2//Contents.dart';

class SelectedSejong extends StatelessWidget {
  static int sigunguCode;
  Widget build(BuildContext context) {
    // 시군구 코드

    final title = '세종 선택';
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.photo_album),
            title: Text(
              '세종 특별 자치시',
              style: TextStyle(fontSize: 17),
            ),

            onTap: () {
              sigunguCode = 1;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
        ],
      ))),
    );
  }

  static int getsigunguCode() {
    print("시군구 코드 : ${sigunguCode} ");
    return sigunguCode;
  }
}
