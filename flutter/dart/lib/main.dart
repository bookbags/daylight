import "package:flutter/material.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() =>_MyAppState();
}

class _MyAppState extends State<MyApp>{
  int _count = 0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title:"dart",
        home: Scaffold(
          appBar: AppBar(title: const Text("this is a counter")),
          body: Container(
            padding:const EdgeInsets.all(10),
            child: Stack(
              children: [
                Center(
                  child: Text("click me $_count 次")
                ),
                TextButton(onPressed: addOne, child: const Text("click me add one"))
              ],
            )
          ),
        )
    );
  }
  addOne(){
    setState(() {
      _count += 1;
    });
  }
}

void main() {
  runApp(const MyApp());
}
