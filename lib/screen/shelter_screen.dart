import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project_p_2/networking/http_response.dart';
import 'package:project_p_2/networking/json_parse.dart';

HttpResponse httpResponse = HttpResponse('http://localhost:5000/getData');
List<JsonParse> posts = httpResponse.posts;

class ShelterScreen extends StatefulWidget {
  static const String id = 'shelter_screen';
  @override
  _ShelterScreenState createState() => _ShelterScreenState();
}

class _ShelterScreenState extends State<ShelterScreen> {
  @override
  void initState() {
    super.initState();
    httpResponse.fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
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
