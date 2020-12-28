import 'package:flutter/material.dart';
import 'package:project_p_2/networking/http_example.dart';
import 'package:project_p_2/prototype2//Tour.dart';
import 'package:project_p_2/screen/home_screen.dart';
import 'package:project_p_2/screen/hospitalScreen.dart';
import 'package:project_p_2/screen/shelter_screen.dart';
import 'package:project_p_2/screen/toilet_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        HospitalScreen.id: (context) => HospitalScreen(),
        ToiletScreen.id: (context) => ToiletScreen(),
        TourApp.id: (context) => TourApp(),
        HttpExample.id: (context) => HttpExample(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}
