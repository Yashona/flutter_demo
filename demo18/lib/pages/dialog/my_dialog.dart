import 'package:flutter/material.dart';
import 'dart:async';

class MyDialog extends Dialog{

  String title;
  String content;

  MyDialog({this.title='',this.content=''});

  _showTimer(context){
    var timer;
    timer = Timer.periodic(  //使用 Timer 时，先引入 dart:async;
      Duration(milliseconds: 3000),
      (t){
        Navigator.pop(context, 'timerColse');
        t.cancel();  //可以用参数取消定时器
        timer.cancel(); //可以用定义的变量取消定时器
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    _showTimer(context); //调用定时器

    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 240.0,
          width: 240.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
          ),
          child:Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        this.title,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          Navigator.pop(context, 'close');
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.0),
                child: Text(
                  this.content,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              )

              /*
              Container(
                height: 240.0,
                width: 240.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '  自定义dialog',
                          style: TextStyle(
                            fontSize: 20.0
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close),
                          iconSize: 18.0,
                          color: Colors.grey,
                          onPressed: (){
                            Navigator.pushNamed(context, 'close');
                          },
                        )
                      ],
                    ),
                    Divider(),
                  ],
                ),
              )
              */

            ],
          ),
        )
      ),
      
    );
  }
}
