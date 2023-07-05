import "package:flutter/material.dart";

class Item extends StatelessWidget {
  final String name;
  final String avatar;
  const Item({super.key, required this.name, required this.avatar});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "friendDetail");
      },
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(110, 158, 158, 158)))),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
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
