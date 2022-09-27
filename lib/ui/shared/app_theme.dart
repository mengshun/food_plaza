import 'package:flutter/material.dart';

class MSAppTheme {

  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;

  static const Color normalTextColor = Colors.red;

  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: const Color.fromARGB(255, 255, 254, 222),
    textTheme: TextTheme(
      bodyText1: const TextStyle(
        fontSize: bodyFontSize,
      ),
      displaySmall: const TextStyle(
        fontSize: smallFontSize,
      ),
      displayMedium: const TextStyle(
        fontSize: normalFontSize,
      ),
      displayLarge: const TextStyle(
        fontSize: largeFontSize,
      ),
    ),
  );

}