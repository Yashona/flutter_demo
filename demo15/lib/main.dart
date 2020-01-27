import 'package:flutter/material.dart';

import './route/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      debugShowCheckedModeBanner: false,
      // home: TabsDemo(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}