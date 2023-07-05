import "package:flutter/material.dart";

class InfoItem extends StatelessWidget {
  final String avatar;
  final String name;
  final String date;
  final String newInfo;
  const InfoItem(this.avatar, this.name, this.date, this.newInfo, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.only(right: 10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                //剪裁为圆角矩形
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  avatar,
                  width: 50,
                ),
              )),
          Expanded(
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.black),
              child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(date, style: TextStyle(fontSize: 20))
                ],
              ),
              Text(
                newInfo,
                style: TextStyle(fontSize: 20),
              )
            ],
          )),  
          )
        ],
      ),
    );
  }
}
