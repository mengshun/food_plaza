import 'package:flutter/material.dart';
import 'home_content.dart';

class MSHomeScreen extends StatelessWidget {
  const MSHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食广场"),
      ),
      body: MSHomeContent(),
    );
  }
}
