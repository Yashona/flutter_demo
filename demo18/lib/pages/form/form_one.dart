import 'package:flutter/material.dart';

class FormOneDemo extends StatefulWidget {
  @override
  _FormOneDemoState createState() => _FormOneDemoState();
}

class _FormOneDemoState extends State<FormOneDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单 01'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text('默认输入框：'),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: '请输入内容'
                  ),
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: Text('带边框输入框：'),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: '请输入内容',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: Text('多行输入框：'),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  maxLines: 5,  //最多显示 5 行内容，可以输入更多内容
                  decoration: InputDecoration(
                    hintText: '请输入内容 -- 多行输入框',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: Text('带标题输入框：'),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: '请输入用户名(设置边框颜色无效)',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(  //设置无效 ？？？
                        color: Colors.green,
                        width: 5.0,
                      )
                    ),
                    labelText: '用户名：'
                  ),
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: Text('密码输入框：'),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  obscureText: true, //密码输入框设置
                  decoration: InputDecoration(
                    hintText: '请输入密码',
                    border: OutlineInputBorder(),
                    labelText: '密码：',
                    hoverColor: Colors.yellow
                  ),
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: Text('带图标输入框：'),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: '请输入内容',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.people),
                  ),
                ),
                SizedBox(height: 20.0,),
                Column(
                  children: <Widget>[
                    Center(
                      child:Text('text	文本输入键盘'),
                    ),
                    Center(
                      child:Text('multiline	多行文本，需和maxLines配合使用(设为null或大于1)'),
                    ),
                    Center(
                      child:Text('number	数字；会弹出数字键盘'),
                    ),
                    Center(
                      child:Text('phone	优化后的电话号码输入键盘；会弹出数字键盘并显示“* #”'),
                    ),
                    Center(
                      child:Text('datetime	优化后的日期输入键盘；Android上会显示“: -”'),
                    ),
                    Center(
                      child:Text('emailAddress	优化后的电子邮件地址；会显示“@ .”'),
                    ),
                    Center(
                      child:Text('url	优化后的url输入键盘； 会显示“/ .”'),
                    ),
                    SizedBox(height: 20.0,),
                    Center(
                      child:Text(
                        '*********以上设置后仍不会有太大变化**********',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: Text('数字键盘输入框：'),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '请输入数字(仍然可以输入其它的)',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20.0,),
                Center(
                  child: Text('日期键盘输入框：'),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText: '请输入日期',
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.people),
                  ),
                ),

              ],
            ),
          )
      
        ],
      )
      
          
    );
  }
}