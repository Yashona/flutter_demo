import 'package:flutter/material.dart';

import './home_page.dart';

class SplashScreenDemo extends StatefulWidget {
  @override
  _SplashScreenDemoState createState() => _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo> with SingleTickerProviderStateMixin {
  
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController( vsync: this, duration: Duration(milliseconds: 5000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => MyHomePage()), 
          (route) => route == null
        );
      }
    });

    _controller.forward();//播放动画
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'https://cdn.duitang.com/uploads/item/201412/27/20141227150432_FeS8P.jpeg',
        scale: 2.0,
        fit: BoxFit.cover
      ),

    );
  }
}