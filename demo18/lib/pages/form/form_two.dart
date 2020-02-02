import 'package:flutter/material.dart';

class FormTwoDemo extends StatefulWidget {
  @override
  _FormTwoDemoState createState() => _FormTwoDemoState();
}

class _FormTwoDemoState extends State<FormTwoDemo> {
  var _username = new TextEditingController();
  var username1,username2;

  @override
  void initState() { 
    super.initState();
    _username.text = '初始值'; //可设定初始值
    username1 = '';
    username2 = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单 02'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0,),
                Center(
                  child: Text(
                    '获取输入框的值：',
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: '请输入内容',
                    border: OutlineInputBorder(),
                    labelText: '用户名：',
                    hoverColor: Colors.yellow
                  ),
                  onChanged: (value){
                    setState(() {
                      this.username1 = value;
                    });
                  },
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 30.0,
                  alignment: Alignment.centerLeft,
                  color: Colors.blue,
                  child: Text(
                    '输入框的值为：${this.username1}',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),
                  ),
                ),
                Divider(
                  height: 30.0,
                  color: Colors.green,
                  thickness: 2.0,
                ),
                Center(
                  child: Text(
                    '点击按钮获取输入框的值：',
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 60.0,
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: Colors.red,
                    cursorWidth: 4.0,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: '请输入内容',
                      border: OutlineInputBorder(),
                      labelText: '用户名：',
                      hoverColor: Colors.yellow,
                    ),
                    onChanged: (value){
                      setState(() {
                        this.username2 = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  width: double.infinity, //适应外层的宽度
                  height: 40.0,
                  // color: Colors.yellow,   //此处设置背景颜色报错，因为存在 decoration 属性，
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)), 
                    color: Colors.yellow,  //此处可设置背景颜色
                  ),
                  child: RaisedButton(
                    child: Text(
                      '获取值',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                      ),
                    ),
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (context) {
                          return new SimpleDialog(
                            title: new Text("获取的值为："),
                            children: <Widget>[
                              new SimpleDialogOption(
                                child: new Text("${this.username2}"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }
                      );
                    },
                  ),

                ),
                SizedBox(height: 10.0,),
                Divider(
                  height: 30.0,
                  color: Colors.green,
                  thickness: 2.0,
                ),
                Center(
                  child: Text(
                    '点击按钮获取输入框的值：',
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 50.0,
                  alignment: Alignment.center,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: '请输入内容',
                      border: OutlineInputBorder(),
                      labelText: '用户名：',
                      hoverColor: Colors.yellow,
                      suffixIcon: IconButton(  //不好用，鼠标的焦点不会在最后面  // suffixIcon 是固定在右侧， suffix是点击中才显示
                        icon: Icon(Icons.close),
                        iconSize: 18.0,
                        padding: EdgeInsets.all(0.0),
                        onPressed: (){
                          this._username.text = '';
                          FocusScope.of(context).requestFocus(new FocusNode()); //收回键盘
                        },
                      )
                      
                    ),
                    controller: this._username,
                    onChanged: (value){
                      setState(() {
                        this._username.text = value;
                      });
                    },
                  ),
                ),

              ],
            ),
          )
                
        ],
      ),
    );
  }
}