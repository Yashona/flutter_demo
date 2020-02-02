import 'package:flutter/material.dart';

import './home_page.dart';
import './category_page.dart';
import './setting_page.dart';

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
      ..add(CategoryPage())
      ..add(SettingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:this.tabList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        fixedColor: Colors.red,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置')
          )
        ]
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[

           /* 
            DrawerHeader(  //抽屉头部设置背景
              decoration: BoxDecoration(
                // color: Colors.lightBlueAccent, //背景颜色
                image: DecorationImage(
                  image: NetworkImage('http://img.juimg.com/tuku/yulantu/110111/292-110111035J3100.jpg'),
                  fit: BoxFit.fill
                )
              ),
              child: Center(
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  child: CircleAvatar(
                    child: Center(
                      child: Text('R'),
                    ),
                  ),
                ),
              ),
            ), 
            */

            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      'Yashona',
                      style: TextStyle(
                        color: Colors.lightBlue
                      ),
                    ),
                    accountEmail: Text(
                      'Yashona@163.com',
                      style: TextStyle(
                        color: Colors.lightBlue
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://b-ssl.duitang.com/uploads/item/201607/26/20160726185736_yPmrE.thumb.224_0.jpeg'),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('http://img.juimg.com/tuku/yulantu/110111/292-110111035J3100.jpg'),
                        fit: BoxFit.fill
                      )
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.network('https://cdn.duitang.com/uploads/item/201409/07/20140907002852_hMZP8.png'),
                      Image.network('http://pic.17qq.com/img_qqtouxiang/4889395.jpeg')
                    ],
                  ),
                )
              ],
            ),

            ListTile(
              title: Text('我的空间'),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.grey,
            ),
            ListTile(
              title: Text('用户中心'),
              leading: Icon(Icons.people),
              onTap: (){
                Navigator.pushNamed(context, '/user'); //跳转后，侧边栏不能缩回去
              },
            ),
            Divider(
              height: 1.0,
              color: Colors.grey,
            ),
            ListTile(
              title: Text('设置中心'),
              leading: Icon(Icons.settings),
              onTap: (){
                setState(() {
                  this._currentIndex = 2;
                });
                Navigator.of(context).pop(); //让侧边栏缩回去
              },
            ),
            Divider(
              height: 1.0,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(  //右侧抽屉
      //   child: Text('hello, right drawer'),
      // )
    );
  }
}