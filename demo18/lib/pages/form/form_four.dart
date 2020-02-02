import 'package:flutter/material.dart';

class FormFourDemo extends StatefulWidget {
  @override
  _FormFourDemoState createState() => _FormFourDemoState();
}

class _FormFourDemoState extends State<FormFourDemo> {
  int agree = 0;
  int sex = 1;
  int radioList = 1;
  bool flag4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单 04'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0,),
              Center(
                child: Text(
                  '单选框:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '同意法律协议',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0
                    ),
                  ),
                  Radio(
                    value: 1,
                    onChanged: (v){
                      setState(() {
                        this.agree = v;
                      });
                    },
                    groupValue: this.agree,
                  )
                ],
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '男：',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0
                    ),
                  ),
                  Radio(
                    value: 1,
                    onChanged: (v){
                      setState(() {
                        this.sex = v;
                      });
                    },
                    groupValue: this.sex,
                  ),
                  SizedBox(width: 20.0,),
                  Text(
                    '女：',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0
                    ),
                  ),
                  Radio(
                    value: 2,
                    onChanged: (v){
                      setState(() {
                        this.sex = v;
                      });
                    },
                    groupValue: this.sex,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('当前性别所选择的值为： ${this.sex} '),
                  SizedBox(width: 20.0,),
                  Text(this.sex == 1 ? '男' : '女')
                ],
              ),
              SizedBox(height: 20.0,),
              Divider(
                height: 30.0,
                thickness: 2.0,
                color: Colors.red,
              ),
              Center(
                child: Text(
                  '单选框列表:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              RadioListTile(
                value: 1,
                onChanged: (v){
                  setState(() {
                    this.radioList = v;
                  });
                },
                groupValue: this.radioList,
                title: Text('标题1'),
                subtitle: Text('标题1标题1标题1标题1标题1标题1标题1标题1'),
                secondary: Icon(Icons.flag),
              ),
              RadioListTile(
                value: 2,
                onChanged: (v){
                  setState(() {
                    this.radioList = v;
                  });
                },
                groupValue: this.radioList,
                title: Text('标题2'),
                subtitle: Text('标题2标题2标题2标题2标题2标题2标题2标题2'),
                secondary: Icon(Icons.flare),
                selected: this.radioList == 2,
              ),
              SizedBox(height: 20.0,),
              Divider(
                height: 30.0,
                thickness: 2.0,
                color: Colors.red,
              ),
              Center(
                child: Text(
                  'switch 开关组件:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Switch(
                value: this.flag4,
                onChanged: (v){
                  setState(() {
                    this.flag4 = v;
                  });
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
              )
            ],
          )
        ),
      )
    );
  }
}