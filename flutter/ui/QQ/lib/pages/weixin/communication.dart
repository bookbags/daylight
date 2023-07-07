import "package:flutter/material.dart";
import "package:sqflite/sqflite.dart";
import "../../components/infoItem.dart";
import "../../database/index.dart";

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

class User {
  late String name;
  late String avatar;
  late String date;
  late String info;
  User(
      {required this.name,
      required this.avatar,
      required this.date,
      required this.info});
  User.formMap(Map<String, String> data) {
    name = data["name"]!;
    avatar = data["avatar"]!;
    date = data["date"]!;
    info = data["info"]!;
  }
}

class Communications extends StatefulWidget {
  final Function cb;
  Communications(this.cb);
  @override
  _CommunicationsState createState() => _CommunicationsState(this.cb);
}

class _CommunicationsState extends State<Communications> {
  final Function cb;
  late final MyDatabase db;
  List<User>? communicationData;
  _CommunicationsState(this.cb);

  @override
  void initState() async {
    // TODO: implement initState
    super.initState();
    db = MyDatabase();
    communicationData =
        ((await db.find("communication")) as List<String>).map((item) {
      return User.formMap(item as Map<String, String>);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: (db.find("communicate") ?? []).map((item) {
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
