import 'package:flutter/material.dart';
import 'package:project_p_2/prototype2//Contents.dart';

class SelectedKwangwon extends StatelessWidget {
  static int sigunguCode;
  Widget build(BuildContext context) {
    // 시군구 코드

    final title = '강원도 선택';
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.photo_album),
            title: Text(
              '강릉시',
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
            title: Text('고성군', style: TextStyle(fontSize: 17)),
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
            title: Text('동해시', style: TextStyle(fontSize: 17)),

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
            title: Text('삼척시', style: TextStyle(fontSize: 17)),

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
            title: Text('속초시', style: TextStyle(fontSize: 17)),

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
            title: Text('양구군', style: TextStyle(fontSize: 17)),

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
            title: Text('양양군', style: TextStyle(fontSize: 17)),

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
            title: Text('영월군', style: TextStyle(fontSize: 17)),

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
            title: Text('원주시', style: TextStyle(fontSize: 17)),

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
            title: Text('인제군', style: TextStyle(fontSize: 17)),

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
            title: Text('정선군', style: TextStyle(fontSize: 17)),

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
            title: Text('철원군', style: TextStyle(fontSize: 17)),

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
            title: Text('춘천시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 13;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('태백시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 14;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('평창군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 15;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('홍천군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 16;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('화천군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 17;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('횡성군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 18;
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
