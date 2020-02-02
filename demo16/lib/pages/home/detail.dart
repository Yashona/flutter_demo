import 'package:flutter/material.dart';

class DetailDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情页面'),
      ),
      body: Center(
        child: Text('这是详情页面'),
      )
    );
  }
}