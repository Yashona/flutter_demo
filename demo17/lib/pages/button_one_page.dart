import 'package:flutter/material.dart';

class ButtonOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮 demo 01'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child:Text(
              '凸起按钮：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: (){
                  print('点击了普通按钮');
                },
              ),
              SizedBox(width: 10.0,),
              RaisedButton(
                child: Text('有色按钮'),
                color: Colors.blue,
                onPressed: (){
                  print('点击了有色按钮');
                },
              )
            ],
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.yellow,
          ),
          Center(
            child:Text(
              '定义按钮宽高：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text('自定义宽高'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20.0, //设置阴影
                  onPressed: (){
                    print('点击了自定义宽高按钮');
                  },
                ),
              )
            ],
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.yellow,
          ),
          Center(
            child:Text(
              '自适应按钮：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  // width: 200.0,  //设置宽度无效果
                  height: 55.0,
                  margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      print('点击了自适应按钮');
                    },
                  ),
                ),
              )
              
            ],
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.green,
          ),
          Center(
            child:Text(
              '带图标按钮：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text('图标按钮'),
                color: Colors.green, //背景颜色
                textColor: Colors.white, //图标、文字颜色
                onPressed: (){
                  print('点击了图标按钮');
                },
              ),
            ],
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.green,
          ),
          Center(
            child:Text(
              '带圆角按钮：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('圆角按钮'),
                color: Colors.orange, //背景颜色
                textColor: Colors.white, //文字颜色
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
                ),
                onPressed: (){
                  print('点击了圆角按钮');
                },
              ),
            ],
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.deepOrange,
          ),
          Center(
            child:Text(
              '圆形按钮：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80.0,
                child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.orange,
                  textColor: Colors.white,
                  elevation: 20.0,
                  splashColor: Colors.red,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.white
                    )
                  ),
                  onPressed: (){
                    print('点击了圆形按钮');
                  },
                ),
              )
            ],
          )
        ],
      )
    );
  }
}