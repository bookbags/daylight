import "package:flutter/material.dart";
import "package:qq/pages/components/withLabel.dart";

class Remark extends StatefulWidget {
  final Map params;
  const Remark({super.key, required this.params});
  @override
  _RemarkState createState() => _RemarkState(params: params);
}

class _RemarkState extends State<Remark> {
  Map? params;
  double height = 20;
  _RemarkState({this.params});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 30,
              width: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () => {
                  Navigator.pop(context)
                }, 
                child: const Text("完成"),
              ),
            )
          ],
        )
      ]),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(children: [
          const Text("设置备注和标签"),
          WithLabel(
              label: "备注",
              body: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(0, 255, 255, 255)),
                      
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                ),
              )),
          SizedBox(width: 10, height: height),
          WithLabel(
              label: "标签",
              body: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    hintText: "添加标签"),
              )),
          SizedBox(width: 10, height: height),
          WithLabel(
              label: "电话",
              body: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    hintText: "添加标签"),
              )),
          SizedBox(
            width: 10,
            height: height,
          ),
          WithLabel(
              label: "描述",
              body: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    hintText: "添加文字"),
              ))
        ]),
      ),
    );
  }
}
