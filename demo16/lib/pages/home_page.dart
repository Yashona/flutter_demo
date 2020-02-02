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
            child: Text(
              '这是一个首页页面！',
              style: TextStyle(
                fontSize: 24.0
              ),
            ),
          ),
          SizedBox(height: 30.0,),
          Icon(
            Icons.home,
            size: 60.0,
            color: Colors.lightBlue,
          ),
          SizedBox(height: 30.0,),
          Container(
            width:220.0,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: RaisedButton(
              color: Colors.lightBlue,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushNamed(context, '/innerTopBanner');
              },
              child: Text('进入内部页面的banner页面'),
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            width:220.0,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: RaisedButton(
              color: Colors.lightGreen,
              textColor: Colors.white,
              onPressed: (){
                Navigator.pushNamed(context, '/stateBanner');
              },
              child: Text('进入状态 banner页面'),
            ),
          )
        ],
      )
    );
  }
}