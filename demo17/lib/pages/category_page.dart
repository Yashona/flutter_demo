import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
            child: Text('这是分类页面'),
          ),
          SizedBox(height: 30.0,),
          Icon(
            Icons.category,
            color: Colors.blue,
            size: 50.0,
          ),
          SizedBox(height: 30.0,),
          Container(
            width: 100.0,
            height: 45.0,
            child: RaisedButton(
              child: Text('进入按钮01'),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22.5))
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/buttonOne');
                print('点击了进入按钮01页面');
              },
            ),
          )
        ],
      ),
    );
  }
}