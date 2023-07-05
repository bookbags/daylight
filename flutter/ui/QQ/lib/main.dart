import "package:flutter/material.dart";
import "package:qq/pages/communication/friendInfo.dart";
import "package:qq/pages/route/home.dart";
import "pages/weixin/communicationDetail.dart";
import 'pages/me.dart';
import "pages/communication.dart";
import "pages/find.dart";
import "pages/weixin.dart";
import "pages/route/remark.dart";
import "pages/route/login.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appbarTextColor = const Color.fromARGB(255, 44, 44, 44);
  final bottomBarColor = const Color.fromARGB(255, 44, 44, 44);
  int currentPage = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QQ",
      initialRoute: "login",
      debugShowCheckedModeBanner: false,
      routes: {
        "communicationDetail": (context) {
          final params =
              ModalRoute.of(context)?.settings.arguments ?? {"id": "null"};
          return CommunicationDetail(params: params);
        },
        "friendDetail": (context) {
          final params =
              ModalRoute.of(context)?.settings.arguments ?? {"id": "null"};
          return FriendInfo(params: params as Map);
        },
        "remark": (context) {
          final params =
              ModalRoute.of(context)?.settings.arguments ?? {"id": "null"};
          return Remark(params: params as Map);
        },
        "home": (context) {
          return Home();
        },
        "login": (context) {
          return Login();
        }
      },
    );
  }
}
