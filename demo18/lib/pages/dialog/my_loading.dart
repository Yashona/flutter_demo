
import 'package:flutter/material.dart';
import 'dart:async';

class MyLoading extends Dialog{

  _showTimer(context){
    var timer;
    timer = Timer.periodic(  //使用 Timer 时，先引入 dart:async;
      Duration(milliseconds: 3000),
      (t){
        Navigator.pop(context, 'timerColse');
        // t.cancel();  //可以用参数取消定时器
        timer.cancel(); //可以用定义的变量取消定时器
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 240.0,
          height: 240.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white
          ),
          child:  Column(
            children: <Widget>[
              SizedBox(height: 60.0,),
              CircularProgressIndicator(
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                strokeWidth: 6.0
              ),
              SizedBox(height: 50.0,),
              Text(
                '这是一个测试',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              )
            ],
          ),
         
        ),
      ),
    );
  }

}