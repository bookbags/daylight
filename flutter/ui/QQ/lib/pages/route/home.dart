import "package:flutter/material.dart";
import "../communication.dart";
import "../find.dart";
import "../me.dart";
import "../weixin.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final appbarTextColor = const Color.fromARGB(255, 44, 44, 44);
  final bottomBarColor = const Color.fromARGB(255, 44, 44, 44);
  int currentPage = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
