import 'package:flutter/material.dart';

class InnerTopBanner extends StatefulWidget {
  @override
  _InnerTopBannerState createState() => _InnerTopBannerState();
}

class _InnerTopBannerState extends State<InnerTopBanner> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('内部菜单'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '全部',
              ),
              Tab(
                text: '热门',
              ),
              Tab(
                text: '最新',
              ),
              Tab(
                text: '推荐',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('这是全部内容'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('这是热门内容'),
                ),
                ListTile(
                  title: Text('这是热门内容'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('这是最新内容'),
                ),
                ListTile(
                  title: Text('这是最新内容'),
                ),
                ListTile(
                  title: Text('这是最新内容'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('这是推荐内容'),
                ),
                ListTile(
                  title: Text('这是推荐内容'),
                ),
                ListTile(
                  title: Text('这是推荐内容'),
                ),
                ListTile(
                  title: Text('这是推荐内容'),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}