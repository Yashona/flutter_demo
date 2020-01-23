import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassDemo extends StatefulWidget {
  @override
  _FrostedGlassDemoState createState() => _FrostedGlassDemoState();
}

class _FrostedGlassDemoState extends State<FrostedGlassDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('frosted glass')),
      body: Stack(
        children: <Widget>[
          ConstrainedBox(  //约束盒子组件，添加额外的约束条件Child上
            constraints: const BoxConstraints.expand(),
            child: Image.network('http://dpic.tiankong.com/vs/vg/QJ6429860889.jpg'),
          ),
          Center(
            child: ClipRect( //可裁切的组件
              child: BackdropFilter( //背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        'Yashona',
                        style:Theme.of(context).textTheme.display3
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],

      )
    );
  }
}