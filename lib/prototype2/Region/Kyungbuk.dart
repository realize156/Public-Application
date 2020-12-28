import 'package:flutter/material.dart';
import 'package:project_p_2/prototype2/Contents.dart';

class SelectedKyungbuk extends StatelessWidget {
  static int sigunguCode;
  Widget build(BuildContext context) {
    // 시군구 코드

    final title = '경북 선택';
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.photo_album),
            title: Text(
              '경산시',
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
            title: Text('경주시', style: TextStyle(fontSize: 17)),
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
            title: Text('고령군', style: TextStyle(fontSize: 17)),

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
            title: Text('구미시', style: TextStyle(fontSize: 17)),

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
            title: Text('군위군', style: TextStyle(fontSize: 17)),

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
            title: Text('김천시', style: TextStyle(fontSize: 17)),

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
            title: Text('문경시', style: TextStyle(fontSize: 17)),

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
            title: Text('봉화군', style: TextStyle(fontSize: 17)),

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
            title: Text('상주시', style: TextStyle(fontSize: 17)),

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
            title: Text('성주군', style: TextStyle(fontSize: 17)),

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
            title: Text('안동시', style: TextStyle(fontSize: 17)),

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
            title: Text('영덕군', style: TextStyle(fontSize: 17)),

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
            title: Text('영양군', style: TextStyle(fontSize: 17)),

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
            title: Text('영주시', style: TextStyle(fontSize: 17)),

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
            title: Text('영천시', style: TextStyle(fontSize: 17)),

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
            title: Text('예천군', style: TextStyle(fontSize: 17)),

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
            title: Text('예천군', style: TextStyle(fontSize: 17)),

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
            title: Text('울릉군', style: TextStyle(fontSize: 17)),

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
            title: Text('울진군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 18;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('의성군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 19;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('청도군', style: TextStyle(fontSize: 17)),

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
            title: Text('청송군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 21;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('칠곡군', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 22;
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SelectedContents()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('포항시', style: TextStyle(fontSize: 17)),

            onTap: () {
              sigunguCode = 23;
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
