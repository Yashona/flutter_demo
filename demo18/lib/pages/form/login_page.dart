import 'package:flutter/material.dart';

class LoginRoute extends StatefulWidget {
  @override
  _LoginRouteState createState() => new _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey= new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Form Test"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Column(
            children: <Widget>[
              TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      icon: Icon(Icons.person)
                  ),
                  // 校验用户名
                  validator: (v) {
                    return v
                        .trim()
                        .length > 0 ? null : "用户名不能为空";
                  }

              ),
              TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "您的登录密码",
                      icon: Icon(Icons.lock)
                  ),
                  obscureText: true,
                  //校验密码
                  validator: (v) {
                    return v
                        .trim()
                        .length > 5 ? null : "密码不能少于6位";
                  }
              ),
              // 登录按钮
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text("登录"),
                        color: Theme
                            .of(context)
                            .primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          //在这里不能通过此方式获取FormState，context不对
                          //print(Form.of(context));

                          // 通过_formKey.currentState 获取FormState后，
                          // 调用validate()方法校验用户名密码是否合法，校验
                          // 通过后再提交数据。 
                          if((_formKey.currentState as FormState).validate()){
                            //验证通过提交数据

                            showDialog(
                              context: context,
                              builder: (context) {
                                // return new SimpleDialog(    // 此方式没有 确认 和 取消 按钮
                                //   title: new Text("获取的值为："),
                                //   children: <Widget>[
                                //     new SimpleDialogOption(
                                //       child: new Text("${this._unameController}"),
                                //       onPressed: () {
                                //         Navigator.of(context).pop();
                                //       },
                                //     ),
                                //     new SimpleDialogOption(
                                //       child: new Text("${this._pwdController}"),
                                //       onPressed: () {
                                //         Navigator.of(context).pop();
                                //       },
                                //     ),
                                //   ],
                                // );

                                return AlertDialog(
                                  title: Text("获取的值为："),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          height: 30.0,
                                          child: Text("${this._unameController.text}"),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 30.0,
                                          child: Text("${this._pwdController.text}"),
                                        ),
                                      ]
                                    )
                                  ),
                                  // content: Text("${this._unameController.text}"),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        "确认",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20.0
                                        ),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        "取消",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 20.0
                                        ),
                                      ),
                                    ),
                                  ],
                                );

                              },
                                
                            );

                          }
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}