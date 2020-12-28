import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class HospitalScreen extends StatelessWidget {
  static const String id = 'hospital_screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey
      ),*/
      title: 'Passing Data',
      home: HospitalWidget(),
    );
  }
}

class HospitalWidget extends StatefulWidget {
  @override
  _HospitalWidgetState createState() => _HospitalWidgetState();
}

class _HospitalWidgetState extends State<HospitalWidget> {
  List<Post> _posts = [];

  void _fetchPosts() async {
    final response = await http.get('http://127.0.0.1:5000/hpt');

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
          title: Text('공공의료시설'),
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
                    Icons.local_hospital,
                    size: 30.0,
                  ),
                  title: Text(post.instit_nm),
                  subtitle: Text('기관 분류 : ${post.instit_kind}'),
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
        title: Text(todo.instit_nm),
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child: ListTile(
            title: Text(' 의료기관 분류 : ${todo.medical_instit_kind}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 우편번호 : ${todo.zip_code}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 기관주소(도로명) : ${todo.street_nm_addr}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 대표전화 : ${todo.tel}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 월요일 진료시간 : ${todo.Monday}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 화요일 진료시간 : ${todo.Tuesday}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 수요일 진료시간 : ${todo.Wednesday}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 목요일 진료시간 : ${todo.Thursday}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 금요일 진료시간 : ${todo.Friday}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 토요일 진료시간 : ${todo.Saturday}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 일요일 진료시간 : ${todo.Sunday}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 공휴일 진료시간 : ${todo.holiday}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 일요일 진료 주 : ${todo.sunday_oper_week}'),
          )),
          Card(
              child: ListTile(
            title: Text(' 진료과목 : ${todo.exam_part}'),
          )),
        ],
      ),
    );
  }
}

class Post {
  final dynamic instit_nm;
  final dynamic instit_kind;
  final dynamic medical_instit_kind;
  final dynamic zip_code;
  final dynamic street_nm_addr;
  final dynamic tel;
  final dynamic Monday;
  final dynamic Tuesday;
  final dynamic Wednesday;
  final dynamic Thursday;
  final dynamic Friday;
  final dynamic Saturday;
  final dynamic Sunday;
  final dynamic holiday;
  final dynamic sunday_oper_week;
  final dynamic exam_part;

  Post(
      {this.instit_nm,
      this.instit_kind,
      this.medical_instit_kind,
      this.zip_code,
      this.street_nm_addr,
      this.tel,
      this.Monday,
      this.Tuesday,
      this.Wednesday,
      this.Thursday,
      this.Friday,
      this.Saturday,
      this.Sunday,
      this.holiday,
      this.sunday_oper_week,
      this.exam_part});

  factory Post.fromJSON(Map<String, dynamic> json) {
    return Post(
        instit_nm: json['instit_nm'],
        instit_kind: json['instit_kind'],
        medical_instit_kind: json['medical_instit_kind'],
        zip_code: json['zip_code'],
        street_nm_addr: json['street_nm_addr'],
        tel: json['tel'],
        Monday: json['Monday'],
        Tuesday: json['Tuesday'],
        Wednesday: json['Wednesday'],
        Thursday: json['Thursday'],
        Friday: json['Friday'],
        Saturday: json['Saturday'],
        Sunday: json['Sunday'],
        holiday: json['holiday'],
        sunday_oper_week: json['sunday_oper_week'],
        exam_part: json['exam_part']);
  }
}
