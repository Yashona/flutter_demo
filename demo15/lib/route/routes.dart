import 'package:flutter/material.dart';

import '../tabs.dart';
import '../form.dart';
import '../search.dart';

final routes = {
  '/': (context) => TabsDemo(),
  '/form': (context) => FormPage(),
  '/search': (context,{arguments}) => SearchPage(arguments:arguments)
};

var onGenerateRoute = (RouteSettings settings){
  final String name = settings.name;
  print(settings.name);

  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder != null){
    if(settings.arguments != null){
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context,arguments: settings.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
};