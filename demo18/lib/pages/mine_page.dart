import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50.0,),
                Container(
                  height: 40.0,
                  width: 180.0,
                  
                  child: RaisedButton(
                    child: Text('进入弹出框demo'),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/dialogPage');
                    },
                  ),
                ),
                
                SizedBox(height: 30.0,),
                RaisedButton(
                  child: Text('进入自定义弹出框'),
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.pushNamed(context, '/dialogCustom');
                  },
                ),
              ],
            )

          ],
        )
      ),
    );
  }
}