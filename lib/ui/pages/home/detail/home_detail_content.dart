import 'package:flutter/material.dart';
import 'package:food_plaza/core/model/metal.dart';
import 'package:food_plaza/core/viewmodel/metal_view_model.dart';
import 'package:food_plaza/ui/pages/home/detail/home_detail_item.dart';
import 'package:provider/provider.dart';

import '../../../../core/model/MSCategoryModel.dart';

class MSHomeDetailContent extends StatelessWidget {
  const MSHomeDetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)?.settings.arguments as MSCategoryModel;

    return Selector<MSMetalViewModel, List<MsMetal>>(
      selector: (context, vm) {
        return vm.metals.where((element) {
          return element.categories?.contains(item.id) ?? false;
        }).toList();
      },
      shouldRebuild: (pre, next) => true,
      builder: (context, list, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return MSHomeDetailItem(list[index]);
          },
          itemCount: list.length,
        );
      },
    );
  }
}
