
import 'package:flutter/material.dart';

import '../pages/tabs.dart';
import '../pages/home/inner_top_banner.dart';
import '../pages/home/state_banner.dart';
import '../pages/home/detail.dart';

final routes = {
  '/': (context) => TabsDemo(),
  '/innerTopBanner': (context) => InnerTopBanner(),
  '/stateBanner': (context) => StateBanner(),
  '/home/detail': (context) => DetailDemo()
};

//下面命名是一个变量 使用const会报错
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