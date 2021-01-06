import 'package:flutter/material.dart';
import 'frosted_glass_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '毛玻璃效果制作',
      theme: ThemeData(
        primarySwatch: Colors.blue, //主体颜色
      ),
      home: Scaffold(
        body: FrostedClassDemo(),
      ),
    );
  }
}
