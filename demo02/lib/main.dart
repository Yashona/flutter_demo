import 'package:flutter/material.dart';

import './bottom_navigation_bar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      //自定义主题项目
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: BottomNavigationBarDemo()
    );
  }
}