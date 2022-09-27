import 'package:flutter/material.dart';
import 'package:food_plaza/ui/pages/main/initialize_items.dart';

class MSMainScreen extends StatefulWidget {

  static const String routeName = "/";

  const MSMainScreen({Key? key}) : super(key: key);

  @override
  State<MSMainScreen> createState() => _MSMainScreenState();
}

class _MSMainScreenState extends State<MSMainScreen> {

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children:pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: items,
        unselectedFontSize: 16,
        selectedFontSize: 16,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
