import "package:flutter/material.dart";
import "./navigaterBar.dart";
import "./page/home.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "one",
      home: Scaffold(
      appBar: AppBar(
        title: const Text("千羽竹的小屋"),
      ),
      body: Home(),
      bottomNavigationBar: const MyBottomNavigaterBar()
    ),
    );
  }
}

