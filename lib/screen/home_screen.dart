import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:project_p_2/networking/http_example.dart';
import 'package:project_p_2/prototype2/Tour.dart';
import 'package:project_p_2/screen/hospitalScreen.dart';
import 'package:project_p_2/screen/shelter_screen.dart';
import 'package:project_p_2/screen/toilet_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return DashBoard();
  }
}

class DashBoard extends StatelessWidget {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          child: Container(
            color: Colors.blueAccent[400],
            child: Container(
              height: size.height / 5,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 40.0),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(), // 스크롤 기능 비활성
              crossAxisCount: 2, //가로에 표시할 카드 수
              children: <Widget>[
                createGridItem(0),
                createGridItem(1),
                createGridItem(2),
                createGridItem(3),
              ],
            ))
      ],
    ));
  }
}

Widget createGridItem(int position) {
  var color = Colors.white;
  var iconData = Icons.add;
  var navi;
  String iconTitle;
  switch (position) {
    case 0:
      color = Colors.cyan;
      iconData = FontAwesomeIcons.warehouse;
      iconTitle = '대피소';
      navi = ShelterScreen.id;
      break;
    case 1:
      color = Colors.deepPurple;
      iconData = FontAwesomeIcons.restroom;
      iconTitle = '화장실';
      navi = ToiletScreen.id;
      break;
    case 2:
      color = Colors.orange[300];
      iconData = FontAwesomeIcons.hospitalAlt;
      iconTitle = '병원';
      navi = HospitalScreen.id;
      break;
    case 3:
      color = Colors.pinkAccent;
      iconData = FontAwesomeIcons.planeDeparture;
      iconTitle = '관광지';
      navi = TourApp.id;
      break;
  }

  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
      child: Card(
        elevation: 10,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(color: Colors.white),
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, navi);
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FaIcon(
                  iconData,
                  size: 80,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    iconTitle,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  });
}

class API {
  static Future getData() {
    var url = "http://127.0.0.1:5000/getData";
    return http.get(url);
  }
}
