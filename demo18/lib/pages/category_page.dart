import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50.0,),
                  RaisedButton(
                    child: Text(
                      '进入动画页面 curvedAnimation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: (){
                      Navigator.pushNamed(context, '/curvedAnimation');
                    },
                  ),
                  SizedBox(height: 50.0,),
                  RaisedButton(
                    child: Text(
                      '进入动画页面 LoadingAnimation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: (){
                      Navigator.pushNamed(context, '/loadingAnimation');
                    },
                  ),
                  SizedBox(height: 50.0,),
                  RaisedButton(
                    child: Text(
                      '进入动画页面 TweenAnimation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: (){
                      Navigator.pushNamed(context, '/tweenAnimation');
                    },
                  ),
                  SizedBox(height: 50.0,),
                  RaisedButton(
                    child: Text(
                      '进入动画页面 SwitcherAnimated',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: (){
                      Navigator.pushNamed(context, '/switcherAnimated');
                    },
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    width: 200.0,
                    height: 200.0,
                    color: Colors.green,
                    child: FlutterLogo(),
                  )
                ],
              )
                  
              
            ],
          ),
        ),
      ),
    );
  }
}