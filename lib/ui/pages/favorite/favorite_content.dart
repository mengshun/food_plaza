import 'package:flutter/material.dart';
import 'package:food_plaza/core/extensions/int_extension.dart';
import 'package:food_plaza/core/model/metal.dart';
import 'package:food_plaza/core/viewmodel/favorite_view_model.dart';
import 'package:food_plaza/core/viewmodel/metal_view_model.dart';
import 'package:provider/provider.dart';

import '../home/detail/home_detail_item.dart';

class MSFavoriteContent extends StatelessWidget {
  const MSFavoriteContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector2<MSFavoriteViewModel, MSMetalViewModel, List<MsMetal>>(
        builder: (context, list, _) {
      if (list.isEmpty) {
        return Center(
          child: Text(
            "暂无收藏数据",
            style: TextStyle(
              fontSize: 20.rpx,
            ),
          ),
        );
      }
      return ListView.builder(
        itemBuilder: (context, index) {
          return MSHomeDetailItem(list[index]);
        },
        itemCount: list.length,
      );
    }, selector: (_, faVM, mealVM) {
      final List<String> favList = faVM.favoriteList;
      final res =
          mealVM.metals.where((element) => favList.contains(element.id));
      return res.toList();
    });

    return Consumer<MSFavoriteViewModel>(builder: (context, vm, child) {
      return ListView.builder(
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(vm.favoriteList[index]),
          );
        },
        itemCount: vm.favoriteList.length,
      );
    });
  }
}
