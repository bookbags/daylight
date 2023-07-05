import "package:flutter/material.dart";
import "package:qq/pages/communication/friendInfo.dart";
import "pages/weixin/communicationDetail.dart";
import 'pages/me.dart';
import "pages/communication.dart";
import "pages/find.dart";
import "pages/weixin.dart";
import "pages/route/remark.dart";

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 209, 209, 209),
          title: Text(
            "微信",
            style: TextStyle(color: appbarTextColor),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.search,
                  color: appbarTextColor,
                )),
            IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.add_circle_outline,
                  color: appbarTextColor,
                ))
          ],
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
          children: [WeiXin(), Communication(), Find(), Me()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentPage,
            onTap: (value) {
              _pageController.jumpToPage(value);
              setState(() {
                currentPage = value;
              });
            },
            selectedItemColor: Colors.green,
            unselectedItemColor: bottomBarColor,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.messenger_outline), label: "微信"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.description), label: "通讯录"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.find_in_page), label: "发现"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "我")
            ]),
      ),
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
        "remark":(context){
          final params =
              ModalRoute.of(context)?.settings.arguments ?? {"id": "null"};
          return Remark(params: params as Map);
        }
      },
    );
  }
}
