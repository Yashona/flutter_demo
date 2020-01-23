import 'package:flutter/material.dart';

import './custom_clipper.dart';
import './custom_clipper_wave.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //隐藏模拟器右上角的 debugger 图标
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CustomClipperDemo()  //二次贝赛尔曲线   半圆弧形
      home: CustomClipperWaveDemo()    //波浪曲线
    );
  }
}