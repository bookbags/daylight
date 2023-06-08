import "package:flutter/material.dart";

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"Welcome to flutter one",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("welcom to flutter")),
        body: OutlinedButton(
          onPressed: ()=>{},
          child: const Text("outlineButton", style: TextStyle(color:Colors.red),),
        ),
      )
    );
  }
}

void main(){
  runApp(MyApp());
}