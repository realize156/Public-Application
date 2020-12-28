import 'package:flutter/material.dart';
import 'package:project_p_2/prototype2//Contents.dart';

class SelectedJeju extends StatelessWidget {
  static int sigunguCode;
  Widget build(BuildContext context) {
    final title = '제주 선택';
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          // ListTile(
          //   // leading: Icon(Icons.photo_album),
          //   title: Text(
          //     '남제주군',
          //     style: TextStyle(fontSize: 20),
          //   ),

          //   onTap: () {
          //     sigunguCode = 1;
          //     Navigator.push(
          //       context,
          //       new MaterialPageRoute(
          //           builder: (context) => new SelectedContents()),
          //     );
          //   },
          // ),
          // ListTile(
          //   // leading: Icon(Icons.phone),
          //   title: Text('북제주군', style: TextStyle(fontSize: 20)),
          //   onTap: () {
          //     sigunguCode = 2;
          //     Navigator.push(
          //       context,
          //       new MaterialPageRoute(
          //           builder: (context) => new SelectedContents()),
          //     );
          //   },
          // ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('서귀포시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 3;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('제주시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 4;
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
