import "package:flutter/material.dart";

class _InheritedState extends InheritedWidget {
  final state;
  const _InheritedState({required this.state, required child})
      : super(child: child);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class GlobalState extends StatefulWidget {
  final child;
  final data;
  const GlobalState({required this.child, required this.data});

  static of(BuildContext context) {
    return context.getInheritedWidgetOfExactType<_InheritedState>()?.state;
  }

  @override
  GlobalStateData createState() => GlobalStateData();
}

class GlobalStateData extends State<GlobalState> {
  late var data;

  @override
  void initState() {
    data = widget.data;
    super.initState();
  }

  void updateState(newData) {
    setState(() {
      data = newData;
    });
  }

  void getState() {
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedState(state: this, child: widget.child);
  }
}
