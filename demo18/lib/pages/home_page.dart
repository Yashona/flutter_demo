import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20.0,),
                Container(
                  child: Text(
                    '''
                    form 表单 demo,
                    TextField组件使用，
                    dialog组件使用，
                    form 表单 登录页面验证
                    form 表单 checkbox组件
                    form 表单 checkboxListTile组件
                    form 表单 Radio组件
                    form 表单 RadioListTile组件
                    form 表单 switch组件
                    flutter自带日期组件
                        showTimePicker
                        showDatePicker
                    第三方日期插件
                    弹出层 showDialog
                    动画 animation
                    ''',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black45,
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                RaisedButton(
                  child: Text('进入表单 01'),
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.pushNamed(context, '/formOne');
                  },
                ),
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('进入表单 02'),
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.pushNamed(context, '/formTwo');
                  },
                ),
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('进入login'),
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  },
                ),
              ],
            ),
          )
        ),
      )
    );
  }
}