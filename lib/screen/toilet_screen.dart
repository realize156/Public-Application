import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ToiletScreen extends StatelessWidget {
  static const String id = 'toilet_screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey
      ),*/
      title: 'Passing Data',
      home: ToiletWidget(),
    );
  }
}

class ToiletWidget extends StatefulWidget {
  @override
  _ToiletWidgetState createState() => _ToiletWidgetState();
}

class _ToiletWidgetState extends State<ToiletWidget> {
  //String _text = "Http Example";
  List<Post> _posts = [];

  void _fetchPosts() async {
    final response = await http.get('http://127.0.0.1:5000/');
    final List<Post> parsedResponse = jsonDecode(response.body)
        .map<Post>((json) => Post.fromJSON(json))
        .toList();
    setState(() {
      _posts.clear();
      _posts.addAll(parsedResponse);
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('공공화장실'),
        ),
        body: body());
  }

  Widget body() {
    return ListView.builder(
        itemCount: this._posts.length,
        itemBuilder: (context, index) {
          final post = this._posts[index];
          return Card(
              child: ListTile(
                  leading: Icon(
                    Icons.accessible_forward,
                    size: 30.0,
                  ),
                  title: Text(post.tname),
                  subtitle: Text('도로명 주소 : ${post.raddress}'),
                  //trailing: Icon(Icons.more_vert),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(todo: _posts[index]),
                      ),
                    );
                  }));
        });
  }
}

class DetailScreen extends StatelessWidget {
  final Post todo;

  DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.tname),
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child: ListTile(
            title: Text(' 개방시간 : ${todo.open}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 전화번호 : ${todo.number}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 지번주소 : ${todo.address}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 도로명 주소 : ${todo.raddress}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 여성용-어린이용대변기수 : ${todo.gbb}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 여성용-장애인용대변기수 : ${todo.gnb}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 여성용-대변기수 : ${todo.gb}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 남성용-어린이용소변기수 : ${todo.mbs}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 남성용-어린이용대변기수 : ${todo.mbb}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 남성용-장애인용소변기수 : ${todo.mns}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 남성용-장애인용대변기수 : ${todo.mnb}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 남성용-소변기수 : ${todo.ms}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 남성용-대변기수 : ${todo.mb}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 남녀공용화장실여부 : ${todo.mgo}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 관리기관명 : ${todo.mnagename}'),
          )),
        ],
      ),
    );
  }
}

class Post {
  final dynamic data;
  final dynamic gyung;
  final dynamic we;
  final dynamic sul;
  final dynamic open;
  final dynamic number;
  final dynamic mnagename;
  final dynamic gbb;
  final dynamic gnb;
  final dynamic gb;
  final dynamic mbs;
  final dynamic mbb;
  final dynamic mns;
  final dynamic mnb;
  final dynamic ms;
  final dynamic mb;
  final dynamic mgo;
  final dynamic address;
  final dynamic raddress;
  final dynamic tname;
  final dynamic sp;
  final dynamic code;
  final dynamic name;

  Post(
      {this.data,
      this.gyung,
      this.we,
      this.sul,
      this.open,
      this.number,
      this.mnagename,
      this.gbb,
      this.gnb,
      this.gb,
      this.mbs,
      this.mbb,
      this.mns,
      this.mnb,
      this.ms,
      this.mb,
      this.mgo,
      this.address,
      this.raddress,
      this.tname,
      this.sp,
      this.code,
      this.name});

  factory Post.fromJSON(Map<String, dynamic> json) {
    return Post(
        data: json['데이터기준일자'],
        gyung: json['경도'],
        we: json['위도'],
        sul: json['설치년도'],
        open: json['개방시간'],
        number: json['전화번호'],
        mnagename: json['관리기관명'],
        gbb: json['여성용-어린이용대변기수'],
        gnb: json['여성용-장애인용대변기수'],
        gb: json['여성용-대변기수'],
        mbs: json['남성용-어린이용소변기수'],
        mbb: json['남성용-어린이용대변기수'],
        mns: json['남성용-장애인용소변기수'],
        mnb: json['남성용-장애인용대변기수'],
        ms: json['남성용-소변기수'],
        mb: json['남성용-대변기수'],
        mgo: json['남녀공용화장실여부'],
        address: json['소재지지번주소'],
        raddress: json['소재지도로명주소'],
        tname: json['화장실명'],
        sp: json['구분'],
        code: json['제공기관코드'],
        name: json['제공기관명']);
  }
}
