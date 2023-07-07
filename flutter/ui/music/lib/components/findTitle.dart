import "package:flutter/material.dart";

class FindTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [const Color.fromARGB(255, 202, 202, 202), const Color.fromARGB(255, 105, 105, 105)])
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("新用户登录", style: TextStyle(fontSize: 10)),
          Text("黑胶会员周卡", style: TextStyle(fontSize: 20)),
          Text("付费歌曲免费畅听", style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 138, 138, 138))),
          ElevatedButton(onPressed: ()=>{}, child: Text("去登录")),
          Row( 
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7)
                ),
                child: Text("新用户显示 还剩7天", style: TextStyle(fontSize: 12),)
              )
            ]
          )
        ],
      ),
    );
  }
}
