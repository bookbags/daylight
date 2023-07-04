import "package:flutter/material.dart";
import "../../components/infoItem.dart";

const userInfo = {
  "name": "千羽竹",
  "avatar": "assert/img/avatar.jpeg",
  "msgList": [
    {
      "name": "千羽竹",
      "avatar": "assert/img/avatar.jpeg",
      "date": "星期三",
      "info": "hello world"
    },
    {
      "name": "千羽竹",
      "avatar": "assert/img/avatar.jpeg",
      "date": "星期三",
      "info": "hello world"
    },
    {
      "name": "千羽竹",
      "avatar": "assert/img/avatar.jpeg",
      "date": "星期三",
      "info": "hello world"
    },
    {
      "name": "千羽竹",
      "avatar": "assert/img/avatar.jpeg",
      "date": "星期三",
      "info": "hello world"
    }
  ]
};

class Communications extends StatefulWidget {
  final Function cb;
  Communications(this.cb);
  @override
  _CommunicationsState createState() => _CommunicationsState(this.cb);
}

class _CommunicationsState extends State<Communications> {
  final Function cb;
  _CommunicationsState(this.cb);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: (userInfo["msgList"] as List).map((item) {
          return Listener(
            onPointerDown: (event) {
              cb(event);
            },
            child: InfoItem(
                item["avatar"], item["name"], item["date"], item["info"]),
          );
        }).toList(),
      ),
    );
  }
}
