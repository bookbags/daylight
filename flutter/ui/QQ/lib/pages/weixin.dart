import "package:flutter/material.dart";
import "./weixin/communication.dart";

class WeiXin extends StatefulWidget {
  @override
  _WeiXinState createState() => _WeiXinState();
}

class _WeiXinState extends State<WeiXin> {
  @override
  Widget build(BuildContext context) {
    return Communications((PointerEvent event) {
      Navigator.of(context).pushNamed("communicationDetail", arguments: {"id":"155115"});
    });
  }
}
