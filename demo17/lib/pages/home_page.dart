import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('这是首页,左边抽屉demo'),
          ),
          SizedBox(height: 30.0,),
          Icon(
            Icons.home,
            color: Colors.blue,
            size: 50.0,
          ),
          SizedBox(height: 30.0,),
          Container(
            width: 100.0,
            height: 45.0,
            child: RaisedButton(
              child: Text('进入详情页'),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/detail');
                print('点击了进入详情页面');
              },
            ),
          )
        ],
      ),
    );
  }
}