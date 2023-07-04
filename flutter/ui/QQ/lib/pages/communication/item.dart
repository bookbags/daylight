import "package:flutter/material.dart";

class Item extends StatelessWidget {
  late final String name;
  late final String avatar;
  Item({required this.name, required this.avatar});
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        Navigator.pushNamed(context, "friendDetail");
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: const Color.fromARGB(110, 158, 158, 158)))),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(avatar, width: 50)),
          ),
          Text(name)
        ]),
      ),
    );
  }
}
