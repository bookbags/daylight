import 'package:flutter/material.dart';

class Horizontal extends StatefulWidget {
  @override
  _HorizontalState createState() => _HorizontalState();
}

const menuList = [
  {
    "imgUrl":
        "https://tse1-mm.cn.bing.net/th/id/OIP-C.7KW5GT7NQ8yUGlBbCHEm0gHaNK?pid=ImgDet&rs=1",
    "title": "排行榜",
    "jumpUrl": "http://localhost:3000/",
  },
  {
    "imgUrl":
        "https://tse1-mm.cn.bing.net/th/id/OIP-C.7KW5GT7NQ8yUGlBbCHEm0gHaNK?pid=ImgDet&rs=1",
    "title": "排行榜",
    "jumpUrl": "http://localhost:3000/",
  },
  {
    "imgUrl":
        "https://tse1-mm.cn.bing.net/th/id/OIP-C.7KW5GT7NQ8yUGlBbCHEm0gHaNK?pid=ImgDet&rs=1",
    "title": "排行榜",
    "jumpUrl": "http://localhost:3000/",
  },
  {
    "imgUrl":
        "https://tse1-mm.cn.bing.net/th/id/OIP-C.7KW5GT7NQ8yUGlBbCHEm0gHaNK?pid=ImgDet&rs=1",
    "title": "排行榜",
    "jumpUrl": "http://localhost:3000/",
  },
  {
    "imgUrl":
        "https://tse1-mm.cn.bing.net/th/id/OIP-C.7KW5GT7NQ8yUGlBbCHEm0gHaNK?pid=ImgDet&rs=1",
    "title": "排行榜",
    "jumpUrl": "http://localhost:3000/",
  },
  {
    "imgUrl":
        "https://tse1-mm.cn.bing.net/th/id/OIP-C.7KW5GT7NQ8yUGlBbCHEm0gHaNK?pid=ImgDet&rs=1",
    "title": "排行榜",
    "jumpUrl": "http://localhost:3000/",
  },
  {
    "imgUrl":
        "https://tse1-mm.cn.bing.net/th/id/OIP-C.7KW5GT7NQ8yUGlBbCHEm0gHaNK?pid=ImgDet&rs=1",
    "title": "排行榜",
    "jumpUrl": "http://localhost:3000/",
  },
];

class _HorizontalState extends State<Horizontal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: menuList.map((item) {
            return Item(
                imgUrl: item["imgUrl"] ?? "",
                title: item["title"] ?? "",
                jumpUrl: item["jumpUrl"] ?? "",);
          }).toList()),
    );
  }
}

class Item extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String jumpUrl;
  Item({required this.imgUrl, required this.title, required this.jumpUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("跳转${jumpUrl}");
      },
      child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imgUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Text(title)
            ],
          )),
    );
  }
}
