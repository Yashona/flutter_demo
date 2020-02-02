import 'package:flutter/material.dart';

class FormThreeDemo extends StatefulWidget {
  @override
  _FormThreeDemoState createState() => _FormThreeDemoState();
}

class _FormThreeDemoState extends State<FormThreeDemo> {
  bool flag = false;
  bool flag1 = false;
  bool flag2 = true;
  bool flag3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单 03'),
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
                  '复选框:',
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
                  Checkbox(
                    value: this.flag,
                    checkColor: Colors.blue,
                    activeColor: Colors.red,
                    onChanged: (v){
                      setState(() {
                        this.flag = v;
                      });
                    },
                  ),
                  Text(
                    '复选框',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Center(
                child: Text(
                  '复选框列表:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              CheckboxListTile(
                value: this.flag1,
                onChanged: (v){
                  setState(() {
                    this.flag1 = v;
                  });
                },
                title: Text('标题1'),
                subtitle: Text('二级标题二级标题二级标题二级标题'),
                secondary: Icon(Icons.help),
                selected: this.flag1,
              ),
              SizedBox(height: 10.0,),
              CheckboxListTile(
                value: this.flag2,
                onChanged: (v){
                  setState(() {
                    this.flag2 = v;
                  });
                },
                title: Text(
                  '标题2',
                  style: TextStyle(
                    color: Colors.black,  //设置了字体颜色，使用 selected 时不会变色
                    fontSize: 20.0
                  ),
                ),
                subtitle: Text(
                  '二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题',
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 18.0
                  ),
                ),
                selected: this.flag2,
                secondary: Image.network('https://b-ssl.duitang.com/uploads/item/201505/10/20150510151024_uGUx5.thumb.224_0.jpeg'),
              ),
              SizedBox(height: 10.0,),
              CheckboxListTile(
                value: this.flag3,
                activeColor: Colors.blue,
                checkColor: Colors.red,
                onChanged: (v){
                  setState(() {
                    this.flag3 = v;
                  });
                },
                title: Text(
                  '标题2',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0
                  ),
                ),
                subtitle: Text(
                  '二级标题二级标题二级标题二级标题',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18.0,
                  ),
                ),
                secondary: ClipOval(
                  child: Image.network('http://img.duoziwang.com/2016/12/28/040751102753.jpg'),
                ),
              )
            ],
          ),
        )
        
        
      ),
    );
  }
}