import 'package:flutter/material.dart';
import 'bottom_appBar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不规则导航',
      //自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: BottomAppBarDemo(),
    );
  }
}
