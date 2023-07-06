import "package:flutter/material.dart";
import "package:dio/dio.dart";
import "../../store/index.dart";

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nameControl = TextEditingController();
  final TextEditingController pwsControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assert/img/QQ.png", width: 50),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("daylight",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            )
          ],
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: TextField(
                controller: nameControl,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 211, 211, 211),
                    border: InputBorder.none,
                    hintText: "请输入用户名"),
              ),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: TextField(
                controller: pwsControl,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 211, 211, 211),
                    border: InputBorder.none,
                    hintText: "请输入密码"),
              ),
            )),
        DecoratedBox(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(2, 2), blurRadius: 5)
              ]),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                  onPressed: () async {
                    final dio = Dio();
                    final res = await dio.post("http://192.168.3.50:8095/login",
                        data: {
                          "name": nameControl.text,
                          "pwd": pwsControl.text
                        });

                    if ((res.data as List).isEmpty) {
                      print("用户名或者密码错误");
                    } else {
                      GlobalState.of(context).updateState(res.data);
                      Navigator.of(context).pushNamed("home");
                    }
                  },
                  child:
                      const Text("登录", style: TextStyle(color: Colors.black)))),
        )
      ]),
    ));
  }
}
