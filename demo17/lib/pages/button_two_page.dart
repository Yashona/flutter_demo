import 'package:flutter/material.dart';

class ButtonTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮 demo 02'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){
              print('点击了右上角的搜索按钮');
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child:Text(
              '扁平化按钮：(与凸起按钮几乎没区别)',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          FlatButton(
            child: Text('扁平化按钮'),
            color: Colors.blue,
            textColor: Colors.yellow,
            onPressed: (){
              print('扁平化按钮');
            },
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.yellow,
          ),
          Center(
            child:Text(
              '线框按钮：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          OutlineButton(
            child: Text('线框按钮'),
            color: Colors.green,  //没有效果
            textColor: Colors.yellow,
            onPressed: (){
              print('点击了线框按钮');
            },
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.yellow,
          ),
          Center(
            child:Text(
              '自适应线框按钮：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50.0,
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                  child: OutlineButton(
                    child: Text('自适应线框按钮'),
                    onPressed: (){
                      print('点击了自适应线框按钮');
                    },
                  ),
                ),
              )
            ],
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.red,
          ),
          Center(
            child:Text(
              '按钮组：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20.0,
                    onPressed: (){
                      print('点击了登录按钮');
                    },
                  ),
                  SizedBox(width: 10.0,),
                  RaisedButton(
                    child: Text('注册'),
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    elevation: 20.0,
                    onPressed: (){
                      print('点击了注册按钮');
                    },
                  )
                ],
              )
            ],
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.red,
          ),
          Center(
            child:Text(
              '自定义按钮组件：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          MyButton(
            text: '自定义按钮',
            height: 45.0,
            width: 160.0,
            color: Colors.green,
            textColor: Colors.black26,
            pressed: (){
              print('点击了自定义按钮组件');
            },
          ),
          Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.red,
          ),
          Center(
            child:Text(
              '自定义InkWell按钮组件：',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0
              ),
            )
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 30.0,
            width: 120.0,
            // color: Colors.green,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0,color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: InkWell(
              onTap: (){
                print('点击了我');
              },
              splashColor: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.yellow,
                    size: 18.0,
                  ),
                  SizedBox(width: 10.0),
                  Text('可以点我')
                ],
              )
            ),
          )
        ],
      )
    );
  }
}

//自定义按钮组件

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;
  final color;
  final textColor;

  const MyButton({
    this.text='',
    this.width=80.0,
    this.height=30.0,
    this.color=Colors.blue,
    this.textColor=Colors.white,
    this.pressed=null
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        color: this.color,
        textColor: this.textColor,
        onPressed: this.pressed,
      ),
    );
  }
}