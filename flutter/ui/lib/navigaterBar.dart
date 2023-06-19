import 'package:flutter/material.dart';

class MyBottomNavigaterBar extends StatefulWidget{
  const MyBottomNavigaterBar({super.key});

  @override
  _MyBottomNavigagerBarState createState()=> _MyBottomNavigagerBarState();
}

class _MyBottomNavigagerBarState extends State<MyBottomNavigaterBar>{
  int _index = 0;
  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_on),
            label: "计时"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "回家"
          )
        ],
        currentIndex: _index,
        onTap: changeCurrent,
      );
  }
  changeCurrent(int newValue){
    setState(() {
      _index = newValue;
    });
  }
}