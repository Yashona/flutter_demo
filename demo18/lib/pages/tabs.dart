import 'package:flutter/material.dart';

import './home_page.dart';
import './category_page.dart';
import './setting_page.dart';
import './info_page.dart';
import './mine_page.dart';

class TabsDemo extends StatefulWidget {
  @override
  _TabsDemoState createState() => _TabsDemoState();
}

class _TabsDemoState extends State<TabsDemo> {
  int _currentIndex = 0;
  List tabList = [];

  @override
  void initState() { 
    super.initState();
    tabList
      ..add(HomePage())
      ..add(InfoPage())
      ..add(CategoryPage())
      ..add(SettingPage())
      ..add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.tabList[this._currentIndex],
      /*
      floatingActionButton: FloatingActionButton( //简单的 floatingActionButton 组件
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32.0,
        ),
        onPressed: (){
          print('点击了floate按钮');
        },
        backgroundColor: Colors.yellow, //按钮背景颜色
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //浮动按钮位置：显示在底部tab栏中间，正中交汇；
      */

      floatingActionButton: Container( //改变floatingActionButton的位置，加一个Contaner组件，注意添加的位置
        width: 70.0,
        height: 70.0,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
          color: Colors.white
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          elevation: 5.0,
          backgroundColor: this._currentIndex == 2 ? Colors.yellow : Colors.blue,
          onPressed: (){
            print('点击了floate按钮');
            setState(() {
              this._currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        currentIndex: this._currentIndex,
        fixedColor: Colors.yellow,
        type: BottomNavigationBarType.fixed, //设置点击tab按钮无动效
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 24.0,),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,size: 24.0,),
            title: Text('消息')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category,size: 24.0),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,size: 24.0),
            title: Text('设置')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people,size: 24.0,),
            title: Text('我的')
          ),
        ],
      ),
    );
  }
}