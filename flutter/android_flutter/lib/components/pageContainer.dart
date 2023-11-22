import 'package:android_flutter/var.dart';
import 'package:flutter/material.dart';

Widget PageContainer({required Widget child}){
  return Container(
    decoration: const BoxDecoration(
      color: mainColor
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 3,
      horizontal: 2
    ),
    child:child
  );
}