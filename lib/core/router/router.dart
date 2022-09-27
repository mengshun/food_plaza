

import 'package:flutter/material.dart';
import 'package:food_plaza/ui/pages/main/main.dart';

class MSRouter {
  static const String initializeRoute = MSMainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    MSMainScreen.routeName: (context) => const MSMainScreen(),
  };
  static final RouteFactory generateRoute = (setting) {
    return null;
  };
  static final RouteFactory unknownRoute = (setting) {
    return null;
  };
}