import 'package:flutter/material.dart';

import '../pages/tabs.dart';
import '../pages/detail.dart';
import '../pages/user_page.dart';
import '../pages/button_one_page.dart';
import '../pages/button_two_page.dart';

final routes = {
  '/': (context) => TabsDemo(),
  '/detail': (context) => DetailPage(),
  '/user': (context) => UserPage(),
  '/buttonOne': (context) => ButtonOnePage(),
  '/buttonTwo': (context) => ButtonTwoPage(),
};

final onGenerateRoute = (RouteSettings settings){
  final String name = settings.name;
  print(settings.name);

  final Function pageContentBuilder = routes[name];

  if(pageContentBuilder != null){
    if(settings.arguments != null){
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(
          context,
          arguments: settings.arguments
        )
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