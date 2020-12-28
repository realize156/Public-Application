import 'package:flutter/material.dart';
import 'package:project_p_2/prototype2//Region/Busan.dart';
import 'Tour.dart';

class SelectedContents extends StatelessWidget {
  static int contenttypeid;
  Widget build(BuildContext context) {
    final title = '컨텐츠 선택';
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
          child: Column(
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.photo_album),
            title: Text(
              '관광지',
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text(''),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Result()),
              );

              contenttypeid = 12;
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('문화시설', style: TextStyle(fontSize: 17)),
            subtitle: Text(''),

            onTap: () {
              contenttypeid = 14;
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Result()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('축제/공연/행사', style: TextStyle(fontSize: 17)),
            subtitle: Text(''),

            onTap: () {
              contenttypeid = 15;
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Result()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('레포츠', style: TextStyle(fontSize: 17)),
            subtitle: Text(''),

            onTap: () {
              contenttypeid = 28;
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Result()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('숙박', style: TextStyle(fontSize: 17)),
            subtitle: Text(''),

            onTap: () {
              contenttypeid = 32;
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Result()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('쇼핑', style: TextStyle(fontSize: 17)),

            onTap: () {
              contenttypeid = 38;
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Result()),
              );
            },
          ),
          ListTile(
            // leading: Icon(Icons.phone),
            title: Text('음식', style: TextStyle(fontSize: 17)),
            subtitle: Text('Food'),

            onTap: () {
              contenttypeid = 39;
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Result()),
              );
            },
          )
        ],
      )),
    );
  }

  static int getContentCode() {
    print("컨텐츠 코드: ${contenttypeid}");
    return contenttypeid;
  }
}
