import "package:flutter/material.dart";
import "package:qq/pages/weixin/communicationDetail.dart";
import "./weixin/communication.dart";

class WeiXin extends StatefulWidget {
  @override
  _WeiXinState createState() => _WeiXinState();
}

class _WeiXinState extends State<WeiXin> {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: [
        Communications((PointerEvent event) {
          _pageController.jumpToPage(1);
          print("position ${event.position}");
        }),
        CommunicationDetail()
      ],
    );
  }
}
