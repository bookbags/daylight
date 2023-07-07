import "package:flutter/material.dart";
import "package:test/pages/find.dart";

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => {}, icon: const Icon(Icons.view_headline)),
          actions: [
            UnconstrainedBox(
              child: SizedBox(
                  width: 280,
                  height: 30,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 201, 201, 201),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("罗生门"),
                        )
                      ],
                    ),
                  )),
            ),
            IconButton(
                onPressed: () => {}, icon: const Icon(Icons.settings_voice))
          ],
        ),
        body: Find()
    );
  }
}
