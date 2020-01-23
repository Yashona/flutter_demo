import 'package:flutter/material.dart';

import './each_view.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() { 
    super.initState();
    _eachView = List();
    _eachView
      ..add(EachView('Home'))
      ..add(EachView('Yashona'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return EachView('New Page');
          }));
        },
        tooltip: 'Yashona',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index = 1;
                });
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.alarm),
            //   color: Colors.white,
            //   onPressed: (){},
            // ),
            // IconButton(
            //   icon: Icon(Icons.alternate_email),
            //   color: Colors.white,
            //   onPressed: (){},
            // )
          ],
        ),
      ),
    );
  }
}