import 'package:flutter/material.dart';

class MSAppTheme {

  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;

  static const Color normalTextColor = Colors.red;

  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: const Color.fromARGB(255, 255, 254, 222),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: normalFontSize,
        color: normalTextColor,
      ),
    ),
  );

}