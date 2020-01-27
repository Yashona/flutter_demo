import 'package:flutter/material.dart';

import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var random = new Random();
  int number;
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
            child: Center(
              child: Text('这是首页页面！'),
            ),
          ),
          Divider(height: 30.0),
          Icon(
            Icons.home,
            color: Colors.redAccent,
            size: 60.0,
          ),
          Container(
            width: 120.0,
            height: 45.0,
            child: RaisedButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child:Center(
                child: Text('进入主页面'),
              ),
              onPressed: (){
                setState(() {
                  number = random.nextInt(99999999);
                });
                print(number);
                Navigator.pushNamed(context,'/search', arguments:{
                  "id": '$number'
                });
              },
            ),
          ),
          
        ],
      )
    );
  }
}