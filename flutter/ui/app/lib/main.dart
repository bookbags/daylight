import "package:flutter/material.dart";
import "./pages/time.dart";
import "./pages/gnosis.dart";
import "./pages/capital.dart";
import "./pages/home.dart";

void main() {
  runApp(MyApp());
}

List<Widget> router = [MyTime(), Capital(), Gnosis()];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "one",
      home: Scaffold(
          appBar: AppBar(title: const Text("千羽竹的小屋")),
          body: MyHome(),
          bottomNavigationBar: const BottomNavigater()
      ),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return router[int.parse(settings.name ?? "0")];
        });
      },
    );
  }
}

class BottomNavigater extends StatefulWidget {
  const BottomNavigater({super.key});

  @override
  _BottomNavigaterState createState() => _BottomNavigaterState();
}

class _BottomNavigaterState extends State<BottomNavigater> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: "时间",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "资金"),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: "感悟",
        )
      ],
      currentIndex: _currentIndex,
      onTap: (value) => setState(() {
        _currentIndex = value;
        Navigator.pushNamed(context, value.toString());
      }),
    );
  }
}
