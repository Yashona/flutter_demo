import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                child: Text('进入表单 03'),
                onPressed: (){
                  Navigator.pushNamed(context, '/formThree');
                },
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                color: Colors.blue,
                child: Text('进入表单 04'),
                onPressed: (){
                  Navigator.pushNamed(context, '/formFour');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}