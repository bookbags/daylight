import "package:flutter/material.dart";
import "dart:async";

class MyTime extends StatefulWidget {
  @override
  _MyTimeState createState() => _MyTimeState();
}

String formateTime(int minute, int secend) {
  String sMinute = minute.toString();
  String sSecend = secend.toString();
  if (minute < 10) sMinute = "0$sMinute";
  if (secend < 10) sSecend = "0$sSecend";
  return "$sMinute : $sSecend";
}

class _MyTimeState extends State<MyTime> {
  final double _circleRadius = 300;
  int minute = 0;
  int secend = 0;
  final duration = const Duration(seconds: 1);
  Timer? _timer;
  String howUseTime = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[200],
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: _circleRadius,
              height: _circleRadius,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_circleRadius),
                  color: Colors.lightBlue),
            ),
            Text(
              formateTime(minute, secend),
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  decoration: TextDecoration.none),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => beginTime(),
                    child: const Text("开始"),
                  ),
                  ElevatedButton(onPressed: () => endTime(), child: Text("结束")),
                  ElevatedButton(onPressed: reSet, child: Text("重置"))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    // 记录的保存，
                    onPressed: () => keepRecord(),
                    child: Text("保存记录"))
              ],
            )
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    endTime();
  }

  void beginTime() {
    if (_timer == null) {
      Timer.periodic(duration, (timer) {
        setState(() {
          secend += 1;
          _timer = timer;
          if (secend >= 60) {
            minute += 1;
            secend = 0;
          }
        });
      });
    }
  }

  void endTime() {
    if (_timer != null) {
      _timer?.cancel();
      _timer = null;
    }
  }

  void keepRecord() {
    popUp();
  }

  void reSet() {
    endTime();
    setState(() {
      minute = 0;
      secend = 0;
    });
  }

  Future popUp() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("时间"),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              TextField(
                decoration: InputDecoration(hintText: "时间用途"),
                onChanged: (value) => setState(() {
                  howUseTime = value;
                }),
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("提交")),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("取消"))
            ],
          );
        });
  }
}
