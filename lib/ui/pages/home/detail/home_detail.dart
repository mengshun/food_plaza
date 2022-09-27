import 'package:flutter/material.dart';
import 'package:food_plaza/core/model/MSCategoryModel.dart';
import 'package:food_plaza/core/model/metal.dart';
import 'package:food_plaza/ui/pages/home/detail/home_detail_content.dart';

class MSHomeDetailPage extends StatelessWidget {
  static const String routeName = "/metal";

  const MSHomeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryModel =
        ModalRoute.of(context)?.settings.arguments as MSCategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryModel.title ?? "出现错误"),
      ),
      body: MSHomeDetailContent(),
    );
  }
}
