import "package:flutter/material.dart";
import "communication/item.dart";

const friendInfos = [
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
  },{
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
];
const str = "*ABCDEFGHIJKLMNOPQRSTUVWXYZ#";

class Communication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ListView(children: friendInfos.map((item) {
            return Item(name: item["name"] ?? "", avatar: item["avatar"] ?? "");
          }).toList()),
          Positioned(
            right: 5,
            top: 10,
            child: Column(
              children: str.split("").map((item) {
                return Text(item);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
