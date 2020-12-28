import 'package:flutter/material.dart';
import 'package:project_p_2/prototype2//Contents.dart';

class SelectedJeonbuk extends StatelessWidget {
  static int sigunguCode;
  Widget build(BuildContext context) {
    // 시군구 코드

    final title = '전북 선택';
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.photo_album),
            title: Text(
              '고창군',
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
            title: Text('군산시', style: TextStyle(fontSize: 17)),
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
            title: Text('김제시', style: TextStyle(fontSize: 17)),

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
            title: Text('남원시', style: TextStyle(fontSize: 17)),

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
            title: Text('무주군', style: TextStyle(fontSize: 17)),

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
            title: Text('부안군', style: TextStyle(fontSize: 17)),

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
            title: Text('순창군', style: TextStyle(fontSize: 17)),

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
            title: Text('완주군', style: TextStyle(fontSize: 17)),

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
            title: Text('익산시', style: TextStyle(fontSize: 17)),

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
            title: Text('임실군', style: TextStyle(fontSize: 17)),

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
            title: Text('장수군', style: TextStyle(fontSize: 17)),

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
            title: Text('전주시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 12;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('정읍시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 13;
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
