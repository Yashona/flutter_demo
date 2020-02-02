import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text('分类'),
          bottom: TabBar(
            isScrollable: true, //加上这个属性，多个按钮时可以滑动

            indicatorColor: Colors.yellowAccent,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorSize: TabBarIndicatorSize.label,

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
              ),
              Tab(
                text: '最新2',
              ),
              Tab(
                text: '推荐2',
              ),
              Tab(
                text: '最新3',
              ),
              Tab(
                text: '推荐3',
              ),
              Tab(
                text: '最新4',
              ),
              Tab(
                text: '推荐4',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          '这是一个分类页面！',
                          style: TextStyle(
                            fontSize: 24.0
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Icon(
                        Icons.category,
                        size: 60.0,
                        color: Colors.green,
                      )
                    ],
                  )
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "热门" 界面',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "最新" 界面',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "推荐" 界面',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "最新" 界面2',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "推荐" 界面2',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "最新" 界面3',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "推荐" 界面3',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "最新" 界面4',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  height: 300.0,
                  alignment: Alignment.center,
                  child: Text(
                    '这是 "推荐" 界面4',
                    style: TextStyle(
                          fontSize: 24.0
                        ),
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}