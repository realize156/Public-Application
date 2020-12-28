class JsonParse {
  final String ctName;
  final String stName;

  JsonParse({this.ctName, this.stName});

  factory JsonParse.fromJSON(Map<String, dynamic> json) {
    return JsonParse(
      ctName: json['ctName'],
      stName: json['stName'],
    );
  }
}
