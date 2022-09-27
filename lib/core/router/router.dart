import 'package:flutter/material.dart';
import 'package:food_plaza/ui/pages/home/detail/home_detail.dart';
import 'package:food_plaza/ui/pages/home/meal_detail/MSMealDetailPage.dart';
import 'package:food_plaza/ui/pages/main/main.dart';

class MSRouter {
  static const String initializeRoute = MSMainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    MSMainScreen.routeName: (context) => const MSMainScreen(),
    MSHomeDetailPage.routeName: (context) => const MSHomeDetailPage(),
    MSMealDetailPage.routeName: (context) => const MSMealDetailPage(),
  };
  static final RouteFactory generateRoute = (setting) {
    return null;
  };
  static final RouteFactory unknownRoute = (setting) {
    return null;
  };
}
