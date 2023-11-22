import 'package:android_flutter/components/pageContainer.dart';
import 'package:android_flutter/config.dart';
import 'package:android_flutter/pages/home/gradeCard.dart';
import 'package:android_flutter/utils/arrayMap.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: ListView(
        children: arrayMap(grade, (item, i) => GradeCard(item))
      )
    );
  }
}