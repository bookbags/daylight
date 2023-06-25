import 'package:flutter/material.dart';

class Gnosis extends StatefulWidget {
  @override
  _GnosisState createState() => _GnosisState();
}

class _GnosisState extends State<Gnosis> {
  TextEditingController _textControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 5,right: 5),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textControl,
            decoration: InputDecoration(hintText: "请输入"),
            maxLines: null,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: () => print(_textControl.text), child: Text("提交")),
              ElevatedButton(onPressed: () => _textControl.clear(), child: Text("重置"))
            ],
          )
        ],
      ),
      )
    );
  }
}
