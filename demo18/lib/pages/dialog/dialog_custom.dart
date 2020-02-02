import 'package:flutter/material.dart';

import './my_dialog.dart';
import './my_loading.dart';

class DialogCustom extends StatefulWidget {
  @override
  _DialogCustomState createState() => _DialogCustomState();
}

class _DialogCustomState extends State<DialogCustom> {

  _customDialog(){

    showDialog(
      context: context,
      builder: (context){
        return MyDialog(
          title:'关于我们',
          content:'这是关于我们里面的内容，看看就好！'
        );
      }
    );

  }

  _customLoadingDialog(){
    showDialog(
      context: context,
      builder: (context){
        return MyLoading();
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义弹出层'),
      ),
      body:Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('弹出框--SimpleDialog'),
                  color: Colors.red,
                  onPressed: this._customDialog,
                ),
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('弹出框--LoadingDialog'),
                  color: Colors.blue,
                  onPressed: this._customLoadingDialog,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}