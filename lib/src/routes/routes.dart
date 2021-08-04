import 'package:flutter/material.dart';

import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/animated_container_page.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:components/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext contex) => HomePage(),
    'alert': (BuildContext contex) => AlertPage(),
    'avatar': (BuildContext contex) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage()
  };
}