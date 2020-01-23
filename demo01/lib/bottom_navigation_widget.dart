import 'package:flutter/material.dart';

import './home_screen.dart';
import './email_screen.dart';
import './pages_screen.dart';
import './airplay_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;

  int _currentIndex = 0;
  List<Widget> pageList = List();

  @override
  void initState() { 
    
    pageList
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Pages',
              style: TextStyle(color: _bottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Airplay',
              style: TextStyle(color: _bottomNavigationColor),
            )
          )
        ],
        currentIndex: _currentIndex, //表示哪个高亮
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pageList[_currentIndex],
    );
  }
}