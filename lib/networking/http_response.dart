import 'dart:convert';
import 'json_parse.dart';
import 'package:http/http.dart' as http;

class HttpResponse {
  HttpResponse(this.url);

  final String url;
  List<JsonParse> posts = [];
  void fetchPosts() async {
    final response = await http.get(url);
    final List<JsonParse> parsedResponse = jsonDecode(response.body)
        .map<JsonParse>((json) => JsonParse.fromJSON(json))
        .toList();
    posts.clear();
    posts.addAll(parsedResponse);
  }
}
