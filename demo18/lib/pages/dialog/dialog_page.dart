import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  var alertDialogText = '';
  var simpleDialogText = '';
  var modalBottomSheetText = '';

  _alertDialog() async{
    var result1 = await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text('标题内容'),
          content: Text('弹出层内容'),
          actions: <Widget>[
            FlatButton(
              child: Text(
                '确定',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: (){
                print('点击了确定按钮');
                Navigator.pop(context,'confirm');
              },
            ),
            FlatButton(
              child: Text(
                '取消',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              onPressed: (){
                print('点击了取消按钮');
                Navigator.pop(context, 'cancel');
              },
            )
          ],
        );
      }
    );

    setState(() {
      if(result1 == null) return;
      this.alertDialogText = result1;
    });
  }

  _simpleDialog() async {
    var result2 = await showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text('选择内容'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: (){
                print('Option A');
                Navigator.pop(context, 'A');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: (){
                print('Option B');
                Navigator.pop(context, 'B');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: (){
                print('Option C');
                Navigator.pop(context, 'C');
              },
            ),
          ],
        );
      }
    );

    setState(() {
      if(result2 == null) return;
      this.simpleDialogText = result2;
    });
  }

  _modalBottomSheet() async {
    var result3 = await showModalBottomSheet(
      context: context,
      builder: (context){
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('分享 A'),
                leading: Icon(Icons.share),
                onTap: (){
                  print('分享A');
                  Navigator.pop(context,'A');
                },
              ),
              Divider(),
              ListTile(
                title: Text('分享 B'),
                leading: Icon(Icons.share),
                onTap: (){
                  print('分享B');
                  Navigator.pop(context,'B');
                },
              ),
              Divider(),
              ListTile(
                title: Text('分享 C'),
                leading: Icon(Icons.share),
                onTap: (){
                  print('分享C');
                  Navigator.pop(context,'C');
                },
              )
            ],
          ),
        );
      }
    );

    setState(() {
      if(result3 == null) return;
      this.modalBottomSheetText = result3;
    });
  }


  //1.安装第三方 fluttertoast 库
  //2.在本文件引入
  //3.调用
  _toast() {
    Fluttertoast.showToast(
      msg: "这是一个toast提示",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('弹出层'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50.0,),
                RaisedButton(
                  child: Text('弹出框--AlertDialog'),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  onPressed: this._alertDialog,
                ),
                SizedBox(height: 10.0,),
                Text(
                  '选择的操作：${this.alertDialogText}',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('弹出框--SimpleDialog'),
                  color: Colors.red,
                  onPressed: this._simpleDialog,
                ),
                SizedBox(height: 10.0,),
                Text(
                  '选择的操作：${this.simpleDialogText}',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('弹出框--showModalBottomSheet'),
                  color: Colors.green,
                  onPressed: this._modalBottomSheet,
                ),
                SizedBox(height: 10.0,),
                Text(
                  '选择的操作：${this.modalBottomSheetText}',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('第三方插件--flutter Toast'),
                  color: Colors.yellow,
                  onPressed: this._toast,
                ),
                
              ],
            )
          ],
        ),
      )
    );
  }
}