import 'package:flutter/material.dart';
import "../components/musicList.dart";
import "../components/findTitle.dart";
import "../components/horizontalMenu.dart";

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            FindTitle(),
            Horizontal(),
            // MusicList(title: "推荐歌单")
          ],
        ));
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 250,
      child: DecoratedBox(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Center(child: Text("与众不同，可盐可甜")),
      ),
    );
  }
}
