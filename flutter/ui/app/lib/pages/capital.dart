import 'package:flutter/material.dart';
import "package:dio/dio.dart";

class Capital extends StatefulWidget {
  const Capital({super.key});
  @override
  _CapitalState createState() => _CapitalState();
}

class _CapitalState extends State<Capital> {
  final TextEditingController _typeControl = TextEditingController();
  final TextEditingController _valueControl = TextEditingController();

  void keepConsume() {
    final type = _typeControl.text;
    final value = _valueControl.text;
    Dio dio = Dio();
    dio
        .post("http://192.168.3.50:8090/mobile/capital",
            data: {"type": type, "value": value})
        .then((value) => print("value is $value"))
        .catchError((err) => print("错误$err"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 25, left: 5, right: 5),
        color: Colors.blue[200],
        child: DefaultTextStyle(
            style: const TextStyle(
                fontSize: 20,
                color: Colors.red,
                decoration: TextDecoration.none),
            child: Column(children: [
              const Text("资金管理"),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    controller: _typeControl,
                    decoration: InputDecoration(hintText: "用途"),
                  ),
                  TextFormField(
                    controller: _valueControl,
                    decoration: InputDecoration(hintText: "金额"),
                  ),
                  ElevatedButton(
                      onPressed: () => keepConsume(), child: Text("提交"))
                ],
              ))
            ])),
      ),
    );
  }
}
