import 'package:flutter/material.dart';
import 'package:food_plaza/ui/pages/favorite/favorite_content.dart';

class MSFavoriteScreen extends StatelessWidget {
  const MSFavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("收藏列表"),
      ),
      body: MSFavoriteContent(),
    );
  }
}
