import "package:flutter/material.dart";

import "./ToDo.dart";

const Map<String, String>configMap = {
  "title":"千羽竹的小屋"
};

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "manage",
        home: Scaffold(
          appBar: AppBar(title: Text("${configMap['title']}")),
          body: Body()
        ),
      );
  }
}

class Body extends StatelessWidget{
  const Body({super.key});
  @override
  Widget build(BuildContext context){
    return  Container(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>ToDo()));
              },
              child: Text("待办事项"))
          );
  }
}

void main(){
  runApp(const MyApp());
}