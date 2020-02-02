import 'package:flutter/material.dart';

class StateBanner extends StatefulWidget {
  @override
  _StateBannerState createState() => _StateBannerState();
}

class _StateBannerState extends State<StateBanner> with SingleTickerProviderStateMixin{
  int number = 0;
  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 4
    );
    _tabController.addListener((){ //点击tab栏会有运行两次，即点击和滑动切换
      this.number++;
      print(this.number);
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('状态 banner'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: '全部'
            ),
            Tab(
              text: '热门'
            ),
            Tab(
              text: '最新'
            ),
            Tab(
              text: '推荐'
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text('这是全部'),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text('这是热门'),
                ),
                SizedBox(height: 30.0,),
                RaisedButton(
                  color: Colors.blue,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Text('进入详情页面'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/home/detail');
                  },
                )
              ],
            ),
          ),
          Center(
            child: Text('这是最新'),
          ),
          Center(
            child: Text('这是推荐'),
          )
        ],
      )
    );
  }
}