import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: const DefaultTextStyle(
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
          textAlign: TextAlign.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "欢迎回来",
              ),
              Text("千羽竹"),
              Text("这是你第"),
              Text("n 次"),
              Text("进入系统")
            ],
          )),
    );
  }
}
