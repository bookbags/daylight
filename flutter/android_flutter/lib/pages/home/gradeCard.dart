import 'package:android_flutter/var.dart';
import 'package:flutter/material.dart';

Widget GradeCard(Map<String, dynamic> data){
  return Container(
    decoration: const BoxDecoration(
      color: secondaryColor,
      borderRadius: BorderRadius.all(Radius.circular(5))
    ),
    width: double.infinity,
    margin: const EdgeInsets.only(top: 8, bottom: 15),
    padding: const EdgeInsets.all(4),
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.only(right: 8),
          child: Image.network(
            "https://c-ssl.dtstatic.com/uploads/blog/202102/16/20210216225550_a4e7b.thumb.1000_0.jpg",
            fit: BoxFit.cover,
          )
        ),
        Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                data["name"],
                style: const TextStyle(
                  fontSize: bigFontSize,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(data["desc"])
            ],
          ),
        )
      ],
    ),
  );
}