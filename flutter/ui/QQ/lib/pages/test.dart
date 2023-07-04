import "package:flutter/material.dart";

// Tab 页面
class Page extends StatefulWidget {
  const Page({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("${widget.text}", textScaleFactor: 5));
  }
}

class Test extends StatelessWidget{
  @override
Widget build(BuildContext context) {
  var children = <Widget>[];
  // 生成 6 个 Tab 页
  for (int i = 0; i < 6; ++i) {
    children.add( Page( text: '$i'));
  }

  return PageView(
    // scrollDirection: Axis.vertical, // 滑动方向为垂直方向
    children: children,
  );
}
}
