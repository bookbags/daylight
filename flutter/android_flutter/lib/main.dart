import 'package:flutter/material.dart';

import 'pages/home/index.dart';

void main(){
  return runApp(Root());
}

class Root extends StatefulWidget {
  Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "daylight",
      home: Scaffold(
        appBar: AppBar(title: const Text("修仙阶层图谱"),),
        body: const Home(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Text(""),
              label: "首页"
            ),BottomNavigationBarItem(
              icon: Text(""),
              label: "进阶"
            ),BottomNavigationBarItem(
              icon: Text(""),
              label: "修炼"
            ),
          ],
        ),
        
      ),
    );
  }
}
