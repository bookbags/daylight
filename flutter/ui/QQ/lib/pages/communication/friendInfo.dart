import "package:flutter/material.dart";

const friendInfo = {
  "name": "千羽竹",
  "avatar": "assert/img/avatar.jpeg",
  "date": "星期三",
  "info": "hello world",
  "code": "1234654",
  "address": "贵州 遵义"
};

class FriendInfo extends StatelessWidget {
  final Map params;
  final itemConfig = [
    {"label": "设置备注和标签", "haveDetail": true},
    {"label":"电话号码", "haveDetail":false},
    {"label":"朋友权限", "haveDetail":true},
    {"label":"朋友圈", "haveDetail":true, "margin":true},
    {"label":"更多信息", "haveDetail":true},
    {"label":"发消息", "haveDetail":false, "center":true, "margin": true},
    {"label":"音视频通话", "haveDetail":false,"center":true}
  ];
  FriendInfo({required this.params});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () => {}, icon: const Icon(Icons.more_horiz))
      ]),
      body: Padding(
          padding: const EdgeInsets.only(top:20),
          child: Column(children: [
            Padding(padding: EdgeInsets.only(bottom: 40),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child:
                          Image.asset(friendInfo["avatar"] ?? "", width: 50)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      friendInfo["name"] ?? "",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("微信号：${friendInfo["code"]}"),
                    Text("地区: ${friendInfo["address"]}")
                  ],
                )
              ],
            ),),
            ...itemConfig.map((item){
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 50,
                margin:item["margin"] == true ? EdgeInsets.only(top: 10) : EdgeInsets.only(top:0),
                decoration: const BoxDecoration(
                  border: BorderDirectional(
                    bottom: BorderSide(color: Color.fromARGB(166, 126, 126, 126))
                  ),
                  color:Color.fromARGB(141, 211, 211, 211)
                ),
                child: Row(
                  mainAxisAlignment: item["center"] == true ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item["label"] as String),
                    item["haveDetail"] as bool ? IconButton(onPressed: (){}, icon: const Icon(Icons.navigate_next)):Container(),
                  ]
                ),
              );
            }).toList()
          ])),
    );
  }
}
