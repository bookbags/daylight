import "package:flutter/material.dart";

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "manage",
        home: Scaffold(
          appBar: AppBar(title: Text("")),
        ),
      )
  }
}

void main(){
  runApp(MyApp())
}