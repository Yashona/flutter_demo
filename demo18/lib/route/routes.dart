import 'package:flutter/material.dart';

import '../pages/tabs.dart';
import '../pages/form/form_one.dart';
import '../pages/form/form_two.dart';
import '../pages/form/login_page.dart';
import '../pages/form/form_three.dart';
import '../pages/form/form_four.dart';
import '../pages/date/date_page.dart';
import '../pages/date/date_plugin.dart';
import '../pages/dialog/dialog_page.dart';
import '../pages/dialog/dialog_custom.dart';
import '../pages/animation/curved_animation_page.dart';
import '../pages/animation/loading_animation.dart';
import '../pages/animation/tween_animation.dart';
import '../pages/animation/switcher_animated.dart';

final routes = {
  '/': (context) => TabsDemo(),
  '/formOne': (context) => FormOneDemo(),
  '/formTwo': (context) => FormTwoDemo(),
  '/login': (context) => LoginRoute(),
  '/formThree': (context) => FormThreeDemo(),
  '/formFour': (context) => FormFourDemo(),
  '/datePage': (context) => DatePage(),
  '/datePlugin': (context) => DatePlugin(),
  '/dialogPage': (context) => DialogPage(),
  '/dialogCustom': (context) => DialogCustom(),
  '/curvedAnimation': (context) => CurvedAnimationPage(),
  '/loadingAnimation': (context) => LoadingPage(),
  '/tweenAnimation': (context) => TweenAnimation(),
  '/switcherAnimated': (context) => SwitcherAnimated(),
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