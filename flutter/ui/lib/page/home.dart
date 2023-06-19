import "package:flutter/material.dart";
import "../utils/file.dart";

class Home extends StatefulWidget{
  @override 
  _HomeState createState()=>_HomeState();
}

class _HomeState extends State<Home>{
  int _enterCount = 0;

  @override
  void initState() {
    super.initState();
    getFileIns().then((ins){
      setState(() {
        _enterCount = ins.getInt("enterCount") ?? 1;
      });
    });
  }
  
  @override
  Widget build(BuildContext context){
    return WillPopScope(
        onWillPop: () async{
          getFileIns().then((ins)=>ins.setInt("enterCount", _enterCount + 1));
          return true;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("hello 千羽竹 这是你第")]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("$_enterCount次")]
            ),
            const Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("进入系统了哟")]
            )
          ]
        ),
    );
  }
}