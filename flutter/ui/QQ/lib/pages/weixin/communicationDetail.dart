import "package:flutter/material.dart";

class CommunicationDetail extends StatefulWidget {
  @override
  _CommunicationDetailState createState() => _CommunicationDetailState();
}

class _CommunicationDetailState extends State<CommunicationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("齐纳宇宙")),
      body: Center(child: Text("detail")),
    );
  }
}
