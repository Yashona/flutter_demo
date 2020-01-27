import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text('这是设置页面！'),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Icon(
                Icons.settings,
                size: 60.0,
                color: Colors.lightBlue,
              ),
            )
          ],
        )
      )
    );
  }
}