import "package:flutter/material.dart";

class WithLabel extends StatelessWidget {
  late final String label;
  late final Widget body;
  WithLabel({required this.label, required this.body});
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16), 
          child: Text(label, style: const TextStyle(color: Color.fromARGB(255, 126, 126, 126)),)
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          height: 30,
          child: body
        )
      ],
    );
  }
}
