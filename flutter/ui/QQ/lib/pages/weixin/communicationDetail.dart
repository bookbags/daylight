import "package:flutter/material.dart";

class CommunicationDetail extends StatefulWidget {
  late final Map? params;
  CommunicationDetail({params = const {"id": ""}}) {
    this.params = params;
  }

  @override
  CommunicationDetailState createState() =>
      CommunicationDetailState(params?["id"]);
}

class CommunicationDetailState extends State<CommunicationDetail> {
  late final String communicationId;
  final appbarTextColor = const Color.fromARGB(255, 44, 44, 44);
  final bottomBarColor = const Color.fromARGB(255, 44, 44, 44);
  CommunicationDetailState(this.communicationId);
  TextEditingController _textControl = TextEditingController();
  var inputType = "audio";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("齐纳宇宙",
            style: TextStyle(color: Color.fromARGB(255, 44, 44, 44))),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: appbarTextColor,
              )),
        ],
      ),
      body: Column(children: [
        Expanded(
            child: ListView(
            children: [
              const Text("c"),
              const Text("d")
            ],
        )),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          height: 50,
          child: Row(
            children: [
              inputType == "audio"
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          inputType = "input";
                        });
                      },
                      icon: const Icon(Icons.contactless))
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          inputType = "audio";
                        });
                      },
                      icon: Icon(Icons.apps)),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                height: 40,
                child: TextField(
                  decoration: const InputDecoration(
                      fillColor: Color.fromARGB(255, 218, 218, 218),
                      filled: true,
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 8)),
                  controller: _textControl,
                  onChanged: (value) {
                    print("value is $value");
                  },
                  onSubmitted: (value) {
                    print("提交");
                  },
                ),
              )),
              IconButton(onPressed: () => {}, icon: Icon(Icons.mood)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_circle))
            ],
          ),
        )
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
    // 请求聊天数据
  }
}
