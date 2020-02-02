import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int number = 0;
  int searchNumber = 0;
  int setNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            setState(() {
              this.number++;
            });
            print('点击了菜单按钮');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){
              setState(() {
                this.searchNumber++;
              });
              print('点击了搜索按钮');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.yellowAccent,
            onPressed: (){
              setState(() {
                this.setNumber++;
              });
              print('点击了设置按钮');
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.settings,
            size: 60.0,
            color: Colors.yellow,
          ),
          SizedBox(height: 30.0,),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '这是一个设置页面！$number',
                  style: TextStyle(
                    fontSize: 24.0
                  ),
                ),
                Text(
                  '搜索按钮点击 $searchNumber 次',
                  style: TextStyle(
                    fontSize: 24.0
                  ),
                ),
                Text(
                  '设置按钮点击 $setNumber 次',
                  style: TextStyle(
                    fontSize: 24.0
                  ),
                ),
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('全部清零'),
                  onPressed: (){
                    setState(() {
                      this.number = 0;
                      this.searchNumber = 0;
                      this.setNumber = 0;
                    });
                  },
                )
              ],
            )
          ),
        ],
      )
    );
  }
}