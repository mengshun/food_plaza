import 'package:flutter/material.dart';
import 'package:food_plaza/core/viewmodel/favorite_view_model.dart';
import 'package:food_plaza/ui/pages/home/meal_detail/meal_detail_content.dart';
import 'package:provider/provider.dart';

import '../../../../core/model/metal.dart';

class MSMealDetailPage extends StatelessWidget {
  static const String routeName = "/mealdetail";

  const MSMealDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as MsMetal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title ?? "无名菜谱"),
      ),
      body: MSMealDetailContent(),
      floatingActionButton: Consumer<MSFavoriteViewModel>(
        builder: (context, vm, child) {
          bool hasFavorite = vm.hasFavorite(meal.id);
          IconData icon = Icons.favorite_outline;
          if (hasFavorite) {
            icon = Icons.favorite;
          }
          return FloatingActionButton(
            onPressed: () {
              if (hasFavorite) {
                vm.removeFavorite(meal.id ?? "");
              } else {
                vm.addFavorite(meal.id ?? "");
              }
            },
            child: Icon(icon),
          );
        },
      ),
    );
  }
}
