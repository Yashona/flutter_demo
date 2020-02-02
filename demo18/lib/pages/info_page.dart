import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('消息'),
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
                child: Text('进入自带日期组件'),
                onPressed: (){
                  Navigator.pushNamed(context, '/datePage');
                },
              ),
              SizedBox(height: 30.0),
              RaisedButton(
                color: Colors.blue,
                child: Text('进入第三方日期组件'),
                onPressed: (){
                  Navigator.pushNamed(context, '/datePlugin');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}