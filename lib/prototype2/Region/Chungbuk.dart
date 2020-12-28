import 'package:flutter/material.dart';
import 'package:project_p_2/prototype2//Contents.dart';

class SelectedChungbuk extends StatelessWidget {
  static int sigunguCode;

  Widget build(BuildContext context) {
    final title = '충북 선택';
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.photo_album),
            title: Text(
              '괴산군',
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
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('단양군', style: TextStyle(fontSize: 17)),
            onTap: () {
              sigunguCode = 2;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('보은군', style: TextStyle(fontSize: 17)),

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
            title: Text('영동군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 4;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('옥천군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 5;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('음성군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 6;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('제천시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 7;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('진천군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 8;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('청원군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 9;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('청주시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 10;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('충주시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 11;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('증평군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 12;
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
