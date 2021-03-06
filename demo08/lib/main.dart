import 'package:flutter/material.dart';
import './expansion_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData.dark(),
      home: ExpansionTileDemo()
    );
  }
}