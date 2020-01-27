import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Center(
            child: Text(
              '这是搜索页面！--- ${arguments != null ? arguments["id"] : "0"}',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.redAccent
              ),
              textAlign: TextAlign.center,
            )
          ),
          SizedBox(height: 30.0),
          Icon(
            Icons.search,
            size: 60.0,
            color:Colors.red
          )
        ],
      ),
    );
  }
}
/*
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final arguments;
  SearchPage({this.arguments})
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '这是搜索页面！--- ${this.arguments}',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.redAccent
            ),
          ),
          Icon(
            Icons.search,
            size: 60.0,
            color:Colors.red
          )
        ],
      ),
    );
  }
}
*/