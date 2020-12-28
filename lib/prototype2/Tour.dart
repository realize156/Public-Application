import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_p_2/prototype2//Code.dart';
import 'SelectArea.dart';
import 'Region/Seoul.dart';
import 'Region/Busan.dart';
import 'Region/Chungbuk.dart';
import 'Region/Chungnam.dart';
import 'Region/Daegu.dart';
import 'Region/Daejeon.dart';
import 'Region/InCheon.dart';
import 'Region/Jeju.dart';
import 'Region/Jeonbuk.dart';
import 'Region/Jeonnam.dart';
import 'Region/KwangJu.dart';
import 'Region/Kwangwon.dart';
import 'Region/Kyeongki.dart';
import 'Region/Kyungbuk.dart';
import 'Region/Kyungnam.dart';
import 'Region/Sejong.dart';
import 'Region/Ulsan.dart';
import 'Contents.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'Region/';

void main() => runApp(TourApp());

class TourApp extends StatelessWidget {
  static const String id = 'tour_app';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new TourScreen());
  }
}

class TourScreen extends StatelessWidget {
  // SelectArea selectArea = new SelectArea();
  static int areaCode;

  List area = [
    SelectArea(area: '서울', areaEng: 'Seoul', areaCode: 1),
    SelectArea(area: '인천', areaEng: 'Incheon', areaCode: 2),
    SelectArea(area: '대전', areaEng: 'DaeJeon', areaCode: 3),
    SelectArea(area: '대구', areaEng: 'DaeGu', areaCode: 4),
    SelectArea(area: '광주', areaEng: 'KwangJu', areaCode: 5),
    SelectArea(area: '부산', areaEng: 'Busan', areaCode: 6),
    SelectArea(area: '울산', areaEng: 'Ulsan', areaCode: 7),
    SelectArea(area: '세종', areaEng: 'Sejong', areaCode: 8),
    SelectArea(area: '경기도', areaEng: 'Kyungki', areaCode: 31),
    SelectArea(area: '강원도', areaEng: 'Kwangwon', areaCode: 32),
    SelectArea(area: '충북', areaEng: 'Chungbuk', areaCode: 33),
    SelectArea(area: '충남', areaEng: 'Chungnam', areaCode: 34),
    SelectArea(area: '경북', areaEng: 'Kyungbuk', areaCode: 35),
    SelectArea(area: '경남', areaEng: 'Kyungnam', areaCode: 36),
    SelectArea(area: '전북', areaEng: 'Jeonbuk', areaCode: 37),
    SelectArea(area: '전남', areaEng: 'Jeonnam', areaCode: 38),
    SelectArea(area: '제주도', areaEng: 'Jeju', areaCode: 39),
  ];
  @override
  Widget build(BuildContext context) {
    final title = '지역 선택';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: ListView.builder(
            itemCount: area.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(area[index].area),
                subtitle: Text(area[index].areaEng),
                onTap: () {
                  switch (index) {
                    case 0:
                      {
                        areaCode = area[index].areaCode;
                        print(areaCode);
                        // Navigator.pushNamed(context, '/seoul');
                        // Navigator.of(context).pushNamed('/seoul');
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedSeoul()),
                        );
                      }
                      break;
                    case 1:
                      {
                        areaCode = area[index].areaCode;
                        print(areaCode);
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedIncheon()),
                        );
                        break;
                      }
                    case 2:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedDaejeon()),
                        );
                        break;
                      }
                    case 3:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedDaegu()),
                        );
                        break;
                      }
                    case 4:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedKwangju()),
                        );
                        break;
                      }
                    case 5:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedBusan()),
                        );
                        break;
                      }
                    case 6:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedUlsan()),
                        );
                        break;
                      }
                    case 7:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedSejong()),
                        );
                        break;
                      }
                    case 8:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedKyeongki()),
                        );
                        break;
                      }
                    case 9:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedKwangwon()),
                        );
                        break;
                      }
                    case 10:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedChungbuk()),
                        );
                        break;
                      }
                    case 11:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedChungnam()),
                        );
                        break;
                      }
                    case 12:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedKyungbuk()),
                        );
                        break;
                      }
                    case 13:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedKyungnam()),
                        );
                        break;
                      }
                    case 14:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedJeonbuk()),
                        );
                        break;
                      }
                    case 15:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedJeonnam()),
                        );
                        break;
                      }
                    case 16:
                      {
                        areaCode = area[index].areaCode;
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SelectedJeju()),
                        );
                        break;
                      }
                    // case 17:
                    //   {
                    //     paramAreaCode = area[index].areaCode;
                    //     Navigator.push(
                    //       context,
                    //       new MaterialPageRoute(
                    //           builder: (context) => new SelectedSeoul()),
                    //     );
                    //     break;
                    //   }

                  }
                },
              );
            }),
      ),
    );
  }

  static int getAreaCode() {
    print("지역코드 : ${areaCode}");

    return areaCode;
  }
}

/* 세번째 컨텐츠 네비
contenttypeid=12~
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 */

/*   결과값  네비
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/
class Api {
  Response response;

  Api({
    this.response,
  });

  factory Api.fromRawJson(String str) => Api.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Api.fromJson(Map<String, dynamic> json) => Api(
        response: Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "response": response.toJson(),
      };
}

class Response {
  Header header;
  Body body;

  Response({
    this.header,
    this.body,
  });

  factory Response.fromRawJson(String str) =>
      Response.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        header: Header.fromJson(json["header"]),
        body: Body.fromJson(json["body"]),
      );

  Map<String, dynamic> toJson() => {
        "header": header.toJson(),
        "body": body.toJson(),
      };
}

class Body {
  Items items;
  int numOfRows;
  int pageNo;
  int totalCount;

  Body({
    this.items,
    this.numOfRows,
    this.pageNo,
    this.totalCount,
  });

  factory Body.fromRawJson(String str) => Body.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        items: Items.fromJson(json["items"]),
        numOfRows: json["numOfRows"],
        pageNo: json["pageNo"],
        totalCount: json["totalCount"],
      );

  Map<String, dynamic> toJson() => {
        "items": items.toJson(),
        "numOfRows": numOfRows,
        "pageNo": pageNo,
        "totalCount": totalCount,
      };
}

class Items {
  List<Item> item;

  Items({
    this.item,
  });

  factory Items.fromRawJson(String str) => Items.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        item: List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "item": List<dynamic>.from(item.map((x) => x.toJson())),
      };
}

class Item {
  // int code;
  // String name;
  // int rnum;
  dynamic image1;
  dynamic image2;
  dynamic addr1; //주소
  dynamic contentid; //컨텐츠 아이디
  dynamic title; //타이틀
  dynamic tel; //전화번호
  dynamic mapx; //좌표 경도좌표
  dynamic mapy; //좌표 위도좌표
  dynamic overview;
  dynamic contenttypeid;

  Item(
      {this.image1,
      this.image2,
      this.addr1,
      this.contentid,
      this.title,
      this.tel,
      this.mapx,
      this.mapy,
      this.contenttypeid});

  // void setItem(Item item) {
  //   item.addr1 = this.addr1;
  //   item.contentid = this.contentid;
  //   item.title = this.title;
  //   item.tel = this.tel;
  //   item.mapx = this.mapx;
  //   item.mapy = this.mapy;
  // }

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        addr1: json["addr1"],
        contentid: json["contentid"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "addr1": addr1,
        "contentid": contentid,
        "title": title,
      };
}

class DetailItem {
  dynamic firstImage1;
  dynamic addr1; //주소
  dynamic contentid; //컨텐츠 아이디
  dynamic title; //타이틀
  dynamic tel; //전화번호
  dynamic mapx; //좌표 경도좌표
  dynamic mapy; //좌표 위도좌표
  dynamic overview;

  DetailItem(
      {this.firstImage1,
      this.addr1,
      this.contentid,
      this.title,
      this.tel,
      this.mapx,
      this.mapy,
      this.overview});
}

class Content12 {
  dynamic chkbabycarriage;
  dynamic chkcreditcard;
  dynamic chkpet;
  dynamic contentid;
  dynamic contenttypeid;
  dynamic expguide;
  dynamic heritage1;
  dynamic infocenter;
  dynamic parking;
  dynamic usetime;

  Content12({
    this.chkbabycarriage,
    this.chkcreditcard,
    this.chkpet,
    this.contentid,
    this.contenttypeid,
    this.expguide,
    this.heritage1,
    this.infocenter,
    this.parking,
    this.usetime,
  });
}

class Content14 {
  dynamic chkbabycarriageculture;
  dynamic chkcreditcardculture;
  dynamic chkpetculture;
  dynamic contentid;
  dynamic contenttypeid;
  dynamic infocenterculture;
  dynamic parkingculture;
  dynamic parkingfee;
  dynamic restdateculture;
  dynamic usefee;
  dynamic usetimeculture;

  Content14({
    this.chkbabycarriageculture,
    this.chkcreditcardculture,
    this.chkpetculture,
    this.contentid,
    this.contenttypeid,
    this.infocenterculture,
    this.parkingculture,
    this.parkingfee,
    this.restdateculture,
    this.usefee,
    this.usetimeculture,
  });
}

class Content15 {
  dynamic agelimit;
  dynamic bookingplace;
  dynamic contentid;
  dynamic contenttypeid;
  dynamic discountinfofestival;
  dynamic eventenddate;
  dynamic eventplace;
  dynamic eventstartdate;
  dynamic placeinfo;
  dynamic playtime;
  dynamic program;
  dynamic spendtimefestival;
  dynamic sponsor1;
  dynamic sponsor1Tel;
  dynamic subevent;
  dynamic usetimefestival;

  Content15({
    this.agelimit,
    this.bookingplace,
    this.contentid,
    this.contenttypeid,
    this.discountinfofestival,
    this.eventenddate,
    this.eventplace,
    this.eventstartdate,
    this.placeinfo,
    this.playtime,
    this.program,
    this.spendtimefestival,
    this.sponsor1,
    this.sponsor1Tel,
    this.subevent,
    this.usetimefestival,
  });
}

class Content28 {
  dynamic chkbabycarriageleports;
  dynamic chkcreditcardleports;
  dynamic chkpetleports;
  dynamic contentid;
  dynamic contenttypeid;
  dynamic infocenterleports;
  dynamic parkingfeeleports;
  dynamic parkingleports;
  dynamic reservation;
  dynamic usefeeleports;
  dynamic usetimeleports;

  Content28({
    this.chkbabycarriageleports,
    this.chkcreditcardleports,
    this.chkpetleports,
    this.contentid,
    this.contenttypeid,
    this.infocenterleports,
    this.parkingfeeleports,
    this.parkingleports,
    this.reservation,
    this.usefeeleports,
    this.usetimeleports,
  });
}

class Content32 {
  dynamic checkintime;
  dynamic checkouttime;
  dynamic accomcountlodging;
  dynamic barbecue;
  dynamic beauty;
  dynamic benikia;
  dynamic beverage;
  dynamic bicycle;
  dynamic campfire;
  dynamic contentid;
  dynamic contenttypeid;
  dynamic fitness;
  dynamic foodplace;
  dynamic goodstay;
  dynamic hanok;
  dynamic infocenterlodging;
  dynamic karaoke;
  dynamic parkinglodging;
  dynamic pickup;
  dynamic publicbath;
  dynamic publicpc;
  dynamic roomcount;
  dynamic roomtype;
  dynamic sauna;
  dynamic scalelodging;
  dynamic seminar;
  dynamic sports;
  dynamic subfacility;

  Content32({
    this.checkintime,
    this.checkouttime,
    this.accomcountlodging,
    this.barbecue,
    this.beauty,
    this.benikia,
    this.beverage,
    this.bicycle,
    this.campfire,
    this.contentid,
    this.contenttypeid,
    this.fitness,
    this.foodplace,
    this.goodstay,
    this.hanok,
    this.infocenterlodging,
    this.karaoke,
    this.parkinglodging,
    this.pickup,
    this.publicbath,
    this.publicpc,
    this.roomcount,
    this.roomtype,
    this.sauna,
    this.scalelodging,
    this.seminar,
    this.sports,
    this.subfacility,
  });
}

class Content38 {
  String chkbabycarriageshopping;
  String chkcreditcardshopping;
  String chkpetshopping;
  int contentid;
  int contenttypeid;
  String infocentershopping;
  String parkingshopping;
  String restdateshopping;
  String saleitem;
  String saleitemcost;
  String scaleshopping;
  String shopguide;

  Content38({
    this.chkbabycarriageshopping,
    this.chkcreditcardshopping,
    this.chkpetshopping,
    this.contentid,
    this.contenttypeid,
    this.infocentershopping,
    this.parkingshopping,
    this.restdateshopping,
    this.saleitem,
    this.saleitemcost,
    this.scaleshopping,
    this.shopguide,
  });
}

class Content39 {
  String chkcreditcardfood;
  int contentid;
  int contenttypeid;
  String discountinfofood;
  String firstmenu;
  String infocenterfood;
  int kidsfacility;
  int lcnsno;
  String opentimefood;
  String parkingfood;
  String treatmenu;

  Content39({
    this.chkcreditcardfood,
    this.contentid,
    this.contenttypeid,
    this.discountinfofood,
    this.firstmenu,
    this.infocenterfood,
    this.kidsfacility,
    this.lcnsno,
    this.opentimefood,
    this.parkingfood,
    this.treatmenu,
  });
}

// class DetailIntro {
//   dynamic
// }

class Header {
  String resultCode;
  String resultMsg;

  Header({
    this.resultCode,
    this.resultMsg,
  });

  factory Header.fromRawJson(String str) => Header.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        resultCode: json["resultCode"],
        resultMsg: json["resultMsg"],
      );

  Map<String, dynamic> toJson() => {
        "resultCode": resultCode,
        "resultMsg": resultMsg,
      };
}

class Result extends StatelessWidget {
  // int areaCode =
  // int sigungucode
  // int areaCode = TourScreen.getAreaCode();

  static int sigunguCode;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResulteWidget(),
    );
  }
}

class ResulteWidget extends StatefulWidget {
  @override
  _ResultWidgetState createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State {
  int areaCode = TourScreen.getAreaCode();

  int sigunguCode;

  int getsigungu() {
    switch (areaCode) {
      case 1:
        sigunguCode = SelectedSeoul.getsigunguCode();
        break;
      case 2:
        sigunguCode = SelectedIncheon.getsigunguCode();
        break;
      case 3:
        sigunguCode = SelectedDaejeon.getsigunguCode();
        break;
      case 4:
        sigunguCode = SelectedDaegu.getsigunguCode();
        break;
      case 5:
        sigunguCode = SelectedKwangju.getsigunguCode();
        break;
      case 6:
        sigunguCode = SelectedBusan.getsigunguCode();
        break;
      case 7:
        sigunguCode = SelectedUlsan.getsigunguCode();
        break;
      case 8:
        sigunguCode = SelectedSejong.getsigunguCode();
        break;
      case 31:
        sigunguCode = SelectedKyeongki.getsigunguCode();
        break;
      case 32:
        sigunguCode = SelectedKwangwon.getsigunguCode();
        break;
      case 33:
        sigunguCode = SelectedChungbuk.getsigunguCode();
        break;
      case 34:
        sigunguCode = SelectedChungnam.getsigunguCode();
        break;
      case 35:
        sigunguCode = SelectedKyungbuk.getsigunguCode();
        break;
      case 36:
        sigunguCode = SelectedKyungnam.getsigunguCode();
        break;
      case 37:
        sigunguCode = SelectedJeonbuk.getsigunguCode();
        break;
      case 38:
        sigunguCode = SelectedJeonnam.getsigunguCode();
        break;
      case 39:
        sigunguCode = SelectedJeju.getsigunguCode();
        break;
    }
    return sigunguCode;
  }

  int sigungu;
  int contenttypeid = SelectedContents.getContentCode();

  List _data = [];
  Item aaaa;

  Future<Api> fetchPosts() async {
    sigungu = getsigungu();
    print(areaCode);
    print(sigungu);
    print(contenttypeid);
    String servicekey =
        'iV1wSh4gsZl3ugZaRiSe8j6c1HGMyUB%2FSEIoVl%2BxVaKJAEDybzebQyTpF0lEWc%2BhUSI7k4OjCQrWGwJVAX8IRg%3D%3D';
    String url =
        'http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?&areaCode=${areaCode}&sigunguCode=${sigungu}&contentTypeId=${contenttypeid}&ServiceKey=${servicekey}&numOfRows=100&pageNo=1&MobileOS=ETC&MobileApp=TestApp&_type=json';

    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(url);

      try {
        List aaa = jsonDecode(utf8.decode(response.bodyBytes))['response']
            ['body']['items']['item'];
        for (int i = 0; i < aaa.length; i++) {
          var item = aaa[i];

          Item itemtoAdd = Item(
              image1: item['firstimage'],
              image2: item['firstimage2'],
              addr1: item['addr1'],
              contentid: item['contentid'],
              title: item['title'],
              tel: item['tel'],
              mapx: item['mapx'],
              mapy: item['mapy'],
              contenttypeid: item['contenttypeid']);

          setState(() {
            _data.add(itemtoAdd);
          });
        }
      } catch (e) {
        print("값이 한개");
        try {
          var item = jsonDecode(utf8.decode(response.bodyBytes))['response']
              ['body']['items']['item'];
          Item itemtoAdd = Item(
              image1: item['firstimage'],
              image2: item['firstimage2'],
              addr1: item["addr1"],
              contentid: item['contentid'],
              title: item['title'],
              tel: item['tel'],
              mapx: item['mapx'],
              mapy: item['mapy'],
              contenttypeid: item['contenttypeid']);

          setState(() {
            _data.add(itemtoAdd);
          });
        } catch (e) {
          print("값이 아무것도없음");
        }

        // print(item);

      }
    } else {
      throw Exception("failed to load APIII");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  void printItem(Item item) {
    print(item.image1);
    // print(item.image2);
    print(item.addr1);
    print(item.title);
    print(item.contentid);
    print(item.tel);
    print(item.mapx);
    print(item.mapy);
    print(item.contenttypeid);
    print("======================================================");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(
          title: Text("검색결과"),
        ),
        onTap: () {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new TourScreen()),
          );
        },
      ),
      body: new Center(
        child: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (context, index) {
              Item item = _data[index];
              // return Text(item.title);

              return ListTile(
                title: Text(item.title),
                onTap: () {
                  printItem(item);
                  SelectedDetail.setItem(item);

                  // print(item.title);
                  // print(item.contentid);
                  // print(item.tel);
                  // print(item.mapx);
                  // print(item.mapy);

                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new Detail()),
                  );
                },
              );
            }),
      ),
    );
  }
}

/*   디테일  네비
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 */
class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailWidget(),
    );
  }
}

class DetailWidget extends StatefulWidget {
  @override
  SelectedDetail createState() => SelectedDetail();
}

class SelectedDetail extends State {
  static Item item;
  DetailItem zxc = new DetailItem();
  List _data = [];
  static dynamic overview = "";
  static dynamic sid;
  static dynamic tentid;
  static dynamic mapx;
  static dynamic mapy;
  // static int contentsid = item.contentid;

  static Item setItem(Item item2) {
    item = item2;
  }
  //------------  ------------  ------------  ------------  ------------  ------------  ------------  ------------  ------------  ------------

  Future<Api> fetchPosts() async {
    int contentsid = item.contentid;
    int typeid = item.contenttypeid;
    sid = typeid;
    tentid = contentsid;
    print("타입아이다 ${typeid}");

    String servicekey =
        'iV1wSh4gsZl3ugZaRiSe8j6c1HGMyUB%2FSEIoVl%2BxVaKJAEDybzebQyTpF0lEWc%2BhUSI7k4OjCQrWGwJVAX8IRg%3D%3D';
    String url =
        'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=${servicekey}&contentId=${contentsid}&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y&_type=json';

    String url2 =
        'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey=${servicekey}&contentId=${contentsid}&contentTypeId=${typeid}&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&introYN=Y&_type=json';
    var response = await http.get(url);
    var response2 = await http.get(url2);
    if (response.statusCode == 200 && response2.statusCode == 200) {
      print(url);
      print(url2);

      // print(response.body);
      // print(json.decode(response.body)['response']['body']['items']['item']);
      // List items = json.decode(utf8.decode(response.bodyBytes))['response']['body']['items']['item'];

      var item = jsonDecode(utf8.decode(response.bodyBytes))['response']['body']
          ['items']['item'];

      var introitem = jsonDecode(utf8.decode(response.bodyBytes))['response']
          ['body']['items']['item'];

      DetailItem itemtoAdd = DetailItem(
          firstImage1: item['firstimage'],
          addr1: item['addr1'],
          contentid: item['contentid'],
          title: item['title'],
          tel: item['tel'],
          mapx: item['mapx'],
          mapy: item['mapy'],
          overview: item['overview']);

      if (mounted) {
        setState(() {
          _data.add(itemtoAdd);
          zxc = itemtoAdd;
          overview = zxc.overview;
          mapx = zxc.mapx;
          mapy = zxc.mapy;
          // sid = typeid;
        });
      }
    } else {
      throw Exception("failed to load APIII");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

//------------  ------------  ------------  ------------  ------------  ------------  ------------  ------------  ------------  ------------
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    zxc.title ?? '타이틀 없음',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  zxc.addr1 ?? "주소없음 ",
                  style: TextStyle(
                    color: Colors.grey[1000],
                  ),
                ),
                // Text(
                //   zxc.tel ?? "전화번호없음",
                //   style: TextStyle(
                //     color: Colors.grey[1000],
                //   ),
                // ),
              ],
            ),
          ),
          /*3*/
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Google()),
              );
            },
            child: Column(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Icon(
                  Icons.map,
                  color: Colors.blue,
                ),
                Text("지도보기")
              ],
            ),
          )
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: HtmlWidget(
        zxc.overview ?? '개요없음',
      ),
    );

    return Scaffold(
        appBar: CustomAppBar(
          appBar: AppBar(
            title: Text("상세결과"),
          ),
          onTap: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new TourScreen()),
            );
          },
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network(zxc?.firstImage1 ?? '이미지없음'),
              titleSection,
              SizedBox(
                width: double.infinity,
                height: 500,
                child: DefaultTabController(
                  length: 2,
                  child: SafeArea(
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          // isScrollable: true,
                          indicatorColor: Colors.blueGrey,
                          labelColor: Colors.black,
                          tabs: <Widget>[
                            Tab(
                              text: "개요",
                            ),
                            Tab(
                              text: "정보",
                            )
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: <Widget>[FirstTab(), SecondTab()],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // textSection,

              // Image.network(item.image2 ?? '이미지없음'),
              // Text(item.title),
              // Text(item.addr1 ?? "주소값없음"),
              // Text(item.tel ?? '전화번호없음'),
            ],
          ),
        )));
  }
}

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
                    child: HtmlWidget(
          SelectedDetail.overview,
        )))));
  }
}

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondWidget(),
    );
  }
}

class SecondWidget extends StatefulWidget {
  @override
  SecondTab1 createState() => SecondTab1();
}

class SecondTab1 extends State {
  dynamic typeid = SelectedDetail.sid;
  dynamic contentsid = SelectedDetail.tentid;
  Content12 c12 = new Content12();
  Content14 c14 = new Content14();
  Content15 c15 = new Content15();
  Content28 c28 = new Content28();
  Content32 c32 = new Content32();
  Content38 c38 = new Content38();
  Content39 c39 = new Content39();

  Content12 content12 = new Content12();
  Content14 content14 = new Content14();
  Content15 content15 = new Content15();
  Content28 content28 = new Content28();
  Content32 content32 = new Content32();
  Content38 content38 = new Content38();
  Content39 content39 = new Content39();
  Future<Api> fetchPosts() async {
    String servicekey =
        'iV1wSh4gsZl3ugZaRiSe8j6c1HGMyUB%2FSEIoVl%2BxVaKJAEDybzebQyTpF0lEWc%2BhUSI7k4OjCQrWGwJVAX8IRg%3D%3D';

    String url2 =
        'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey=${servicekey}&contentId=${contentsid}&contentTypeId=${typeid}&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&introYN=Y&_type=json';

    var response2 = await http.get(url2);
    if (response2.statusCode == 200) {
      print(url2);
      var introitem = jsonDecode(utf8.decode(response2.bodyBytes))['response']
          ['body']['items']['item'];

      if (typeid == 12) {
        content12 = Content12(
          chkbabycarriage: introitem['chkbabycarriage'],
          chkcreditcard: introitem['chkcreditcard'],
          chkpet: introitem['chkpet'],
          heritage1: introitem['heritage1'],
          infocenter: introitem['infocenter'],
          parking: introitem['parking'],
          usetime: introitem['usetime'],
        );
      }
      if (typeid == 14) {
        content14 = Content14(
          chkbabycarriageculture: introitem['chkbabycarriageculture'],
          chkcreditcardculture: introitem['chkcreditcardculture'],
          chkpetculture: introitem['chkpetculture'],
          infocenterculture: introitem['infocenterculture'],
          parkingculture: introitem['parkingculture'],
          parkingfee: introitem['parkingfee'],
          restdateculture: introitem['restdateculture'],
          usetimeculture: introitem['usetimeculture'],
        );
      }
      if (typeid == 15) {
        content15 = Content15(
          agelimit: introitem['agelimit'],
          eventenddate: introitem['eventenddate'],
          eventplace: introitem['eventplace'],
          playtime: introitem['playtime'],
          spendtimefestival: introitem['spendtimefestival'],
          sponsor1: introitem['sponsor1'],
          usetimefestival: introitem['usetimefestival'],
        );
      }
      if (typeid == 28) {
        content28 = Content28(
          chkbabycarriageleports: introitem['chkbabycarriageleports'],
          chkcreditcardleports: introitem['chkcreditcardleports'],
          infocenterleports: introitem['infocenterleports'],
          reservation: introitem['reservation'],
          usefeeleports: introitem['usefeeleports'],
          usetimeleports: introitem['usetimeleports'],
        );
      }

      if (typeid == 32) {
        content32 = Content32(
          accomcountlodging: introitem['accomcountlodging'],
          checkintime: introitem['checkintime'],
          checkouttime: introitem['checkouttime'],
          foodplace: introitem['foodplace'],
          infocenterlodging: introitem['infocenterlodging'],
          parkinglodging: introitem['parkinglodging'],
          pickup: introitem['pickup'],
          scalelodging: introitem['scalelodging'],
        );
      }
      if (typeid == 38) {
        content38 = Content38(
          chkbabycarriageshopping: introitem['chkbabycarriageshopping'],
          chkcreditcardshopping: introitem['chkcreditcardshopping'],
          chkpetshopping: introitem['chkpetshopping'],
          infocentershopping: introitem['infocentershopping'],
          restdateshopping: introitem['restdateshopping'],
          saleitem: introitem['saleitem'],
          shopguide: introitem['shopguide'],
        );
      }
      if (typeid == 39) {
        content39 = Content39(
          chkcreditcardfood: introitem['chkcreditcardfood'],
          firstmenu: introitem['firstmenu'],
          infocenterfood: introitem['infocenterfood'],
          opentimefood: introitem['opentimefood'],
          parkingfood: introitem['parkingfood'],
        );
      }

      setState(() {
        c12 = content12;
        c14 = content14;
        c15 = content15;
        c28 = content28;
        c32 = content32;
        c38 = content38;
        c39 = content39;
      });
    } else {
      throw Exception("failed to load APIII");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    print(typeid);
    if (typeid == 12) {
      print('aaaa');

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: SafeArea(
                  child: Center(
                      child: Column(children: <Widget>[
            Text("유모차대여: ${c12.chkpet} " ?? '없음'),
            Text("주차시설: ${c12.parking}" ?? '없음'),
            Text("이용시간: ${c12.usetime}" ?? '없음'),
            Text("문의 및 안내: ${c12.infocenter}" ?? '없음'),
          ])))));
    }
    if (typeid == 14) {
      print('aaaaasjdhaskjdhaskjd');
      print(c14.chkpetculture);
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: SafeArea(
                  child: Center(
                      child: Column(children: <Widget>[
            Text("유모차대여: ${c14.chkpetculture}" ?? '없음'),
            Text("신용카드가능: ${c14.chkcreditcardculture}" ?? '없음'),
            Text("애완동물동반여부: ${c14.chkpetculture}" ?? '없음'),
            Text("문의 및 안내: ${c14.infocenterculture}" ?? '없음'),
            Text("주차시설: ${c14.parkingculture}" ?? '없음'),
            Text("주차 요금: ${c14.parkingfee}" ?? '없음'),
            Text("쉬는날: ${c14.restdateculture}" ?? '없음'),
            Text("이용시간: ${c14.usetimeculture}" ?? '없음'),
          ])))));
    }
    if (typeid == 15) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: SafeArea(
                  child: Center(
                      child: Column(children: <Widget>[
            Text("관람가능 연령: ${c15.agelimit}" ?? '없음'),
            Text("행사 장소: ${c15.eventplace}" ?? '없음'),
            Text("공연 시간: ${c15.playtime}" ?? '없음'),
            Text("관람 소요시간: ${c15.spendtimefestival}" ?? '없음'),
            Text("주최자: ${c15.sponsor1}" ?? '없음'),
            Text("이용요금: ${c15.usetimefestival}" ?? '없음'),
          ])))));
    }
    if (typeid == 28) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: SafeArea(
                  child: Center(
                      child: Column(children: <Widget>[
            Text("유모차 대여: ${c28.chkbabycarriageleports}" ?? '없음'),
            Text("신용카드가능정보: ${c28.chkcreditcardleports}" ?? '없음'),
            Text("문의및 안내: ${c28.infocenterleports}" ?? '없음'),
            HtmlWidget("예약여부: ${c28.reservation}" ?? '없음'),
            Text("입장료: ${c28.usefeeleports}" ?? '없음'),
            Text("이용시간: ${c28.usetimeleports}" ?? '없음'),
          ])))));
    }

    if (typeid == 32) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: SafeArea(
                  child: Center(
                      child: Column(children: <Widget>[
            Text("수용가능인원: ${c32.accomcountlodging}" ?? '없음'),
            Text("입실 시간: ${c32.checkintime}" ?? '없음'),
            Text("퇴실 시간: ${c32.checkouttime}" ?? '없음'),
            Text("식음료장: ${c32.foodplace}" ?? '없음'),
            Text("문의 및 안내: ${c32.infocenterlodging}" ?? '없음'),
            Text("주차 시설: ${c32.parkinglodging}" ?? '없음'),
            Text("픽업 서비스: ${c32.pickup}" ?? '없음'),
          ])))));
    }
    if (typeid == 38) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: SafeArea(
                  child: Center(
                      child: Column(children: <Widget>[
            Text("유모차대여 정보: ${c38.chkbabycarriageshopping}" ?? '없음'),
            Text("신용카드가능 정보: ${c38.chkcreditcardshopping}" ?? '없음'),
            Text("애완동물동반가능 정보: ${c38.chkpetshopping}" ?? '없음'),
            HtmlWidget("문의 및 안내 ${c38.infocentershopping}" ?? '없음'),
            Text("쉬는날: ${c38.restdateshopping}" ?? '없음'),
            HtmlWidget("판매 품복: ${c38.saleitem}" ?? '없음'),
            HtmlWidget("매장안내: ${c38.shopguide}" ?? '없음'),
          ])))));
    }
    if (typeid == 39) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: SafeArea(
                  child: Center(
                      child: Column(children: <Widget>[
            Text("신용카드가능 정보: ${c39.chkcreditcardfood}" ?? '없음'),
            Text("대표 메뉴: ${c39.firstmenu}" ?? '없음'),
            Text("문의 및 안내: ${c39.infocenterfood}" ?? '없음'),
            Text("영업시간: ${c39.opentimefood}" ?? '없음'),
            Text("주차시설: ${c39.parkingfood}" ?? '없음'),
          ])))));
    }

    // return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: Scaffold(
    //         body: SafeArea(
    //             child: Column(children: <Widget>[

    //       Text(c12.chkpet ?? '<\br>'),
    //       Text(c12.parking ?? 'asd'),
    //       Text(c12.usetime ?? 'asd'),
    //       Text(c12.infocenter ?? 'asd'),
    //       Text('First Activity Screen'),
    //       Text('First Activity Screen'),
    //     ]))));
  }
}

//------------------------------------------------------------------------------------------------
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onTap;
  final AppBar appBar;

  const CustomAppBar({Key key, this.onTap, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: appBar);
  }

  // TODO: implement preferredSize
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}

class Google extends StatefulWidget {
  @override
  _GoogleState createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    print(
        "**************************************************************************************************");
    print(
        "**************************************************************************************************");

    print(SelectedDetail.mapx);
    print(SelectedDetail.mapy);

    print(SelectedDetail.mapx.runtimeType);
    print(SelectedDetail.mapy.runtimeType);

    if (SelectedDetail.mapy is String) {
      print("스트링이다");
      SelectedDetail.mapy = double.parse(SelectedDetail.mapy);
    }
    if (SelectedDetail.mapx is String) {
      print("스트링이다");
      SelectedDetail.mapx = double.parse(SelectedDetail.mapx);
    }

    // if (_ResultWidgetState.mapx is double) {
    //   print("더블이다");
    //   mx = _ResultWidgetState.mapx;
    //   my = _ResultWidgetState.mapy;

    // } if (_ResultWidgetState.mapx is String || _ResultWidgetState.mapy is String) {
    //   print("스트링이다");
    //   mx = double.parse(_ResultWidgetState.mapx);
    //   my = double.parse(_ResultWidgetState.mapy);
    // }

    // double mx = _ResultWidgetState.mapx as double;
    // double my = _ResultWidgetState.mapy as double;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('지도보기'),
            backgroundColor: Colors.blue[700],
          ),
          body: Stack(
            children: <Widget>[
              GoogleMap(
                markers: {
                  Marker(
                      markerId: MarkerId('test'),
                      infoWindow: InfoWindow(title: '여기다'),
                      position:
                          LatLng(SelectedDetail.mapy, SelectedDetail.mapx))
                },
                initialCameraPosition: CameraPosition(
                    target: LatLng(SelectedDetail.mapy, SelectedDetail.mapx),
                    zoom: 17),
              )
            ],
          )),
    );
  }
}
