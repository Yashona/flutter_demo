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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('这是设置页面'),
          ),
          SizedBox(height: 30.0,),
          Icon(
            Icons.settings,
            color: Colors.blue,
            size: 50.0,
          ),
          SizedBox(height: 30.0,),
          Container(
            width: 100.0,
            height: 45.0,
            child: RaisedButton(
              child: Text('进入按钮02'),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/buttonTwo');
                print('点击了进入按钮02页面');
              },
            ),
          )
        ],
      ),
    );
  }
}