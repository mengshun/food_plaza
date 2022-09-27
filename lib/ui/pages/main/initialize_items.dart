import 'package:flutter/material.dart';
import 'package:food_plaza/ui/pages/favorite/index.dart';
import 'package:food_plaza/ui/pages/home/home.dart';

final List<Widget> pages = [
  MSHomeScreen(),
  MSFavoriteScreen(),
];
final List<BottomNavigationBarItem> items = [
  const BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "首页",
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.star),
    label: "收藏",
  ),
];