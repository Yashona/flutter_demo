import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Center(
              child: Text('这是分类页面！'),
            ),
          ),
          SizedBox(height: 30.0),
          Icon(
            Icons.category,
            color: Colors.lightGreen,
            size: 60.0,
          ),
          Container(
            width: 120.0,
            height: 45.0,
            child: RaisedButton(
              color: Colors.yellow,
              shape: StadiumBorder(),
              child: Center(
                child: Text('进入表单页面'),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/form');
              },
            ),
          )
        ],
      )
    );
  }
}