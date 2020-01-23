import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion tile demo'),
        bottomOpacity: 0.2,
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('Expansion tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('subtitle'),
            )
          ],
          // initiallyExpanded: true, //是否展开
        ),
      ),
    );
  }
}