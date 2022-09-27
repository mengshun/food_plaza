import 'package:flutter/material.dart';
import 'package:food_plaza/core/untils/BoxFix.dart';

import 'core/router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MSBoxFit.initialize(standardSize: 375);

    return MaterialApp(
      title: "美食广场",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
      ),
      routes: MSRouter.routes,
      onGenerateRoute: MSRouter.generateRoute,
      onUnknownRoute: MSRouter.unknownRoute,
    );
  }
}