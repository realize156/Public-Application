import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpExample extends StatefulWidget {
  static const String id = 'http_example';
  @override
  _HttpExampleState createState() => _HttpExampleState();
}

class _HttpExampleState extends State<HttpExample> {
  List<Post> _posts = [];
  void _fetchPosts() async {
    final response = await http.get('http://localhost:5000/getData');
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
      body: Center(
        child: ListView.builder(
          itemCount: this._posts.length,
          itemBuilder: (context, index) {
            final post = this._posts[index];
            return ListTile(
              title: Text(post.ctName),
              subtitle: Text('Id: ${post.ctName}  UserId: ${post.stName}'),
            );
          },
        ),
      ),
    );
  }
}

class Post {
  final String ctName;
  final String stName;

  Post({this.ctName, this.stName});

  factory Post.fromJSON(Map<String, dynamic> json) {
    return Post(
      ctName: json['ctName'],
      stName: json['stName'],
    );
  }
}
