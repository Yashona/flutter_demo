import 'package:flutter/material.dart';

class ToolTipsDemo extends StatefulWidget {
  @override
  _ToolTipsDemoState createState() => _ToolTipsDemoState();
}

class _ToolTipsDemoState extends State<ToolTipsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('tool tips demo'),),
      body:Center(
        child: Tooltip(
          message: '这位美女是谁？',
          child: Image.network('http://06imgmini.eastday.com/mobile/20200109/20200109061832_6da6ba119eea46c235deed0cdf036360_2.jpeg')
        ),
      )
    );
  }
}