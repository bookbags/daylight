import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "千羽竹",
      home: Center(
        child: Text("矩阵"),
      ),
    );
  }
}