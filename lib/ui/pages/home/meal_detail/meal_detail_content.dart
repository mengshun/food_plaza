import 'package:flutter/material.dart';
import 'package:food_plaza/core/extensions/int_extension.dart';

import '../../../../core/model/metal.dart';

class MSMealDetailContent extends StatelessWidget {
  const MSMealDetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as MsMetal;

    return SingleChildScrollView(
      child: Column(
        children: [
          buildHeader(meal.imageUrl),
          buildTitle("制作材料"),
          buildMeterials(meal.ingredients ?? []),
          buildTitle("制作步骤"),
        ],
      ),
    );
  }

  // 普通标题
  Widget buildTitle(String? title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title ?? "",
        style: TextStyle(
          fontSize: 30.rpx,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

// 1. 头部header
  Widget buildHeader(String? url) {
    return Image.network(
      url ?? "",
      width: double.infinity,
      height: 300.rpx,
      fit: BoxFit.cover,
      errorBuilder: (ctx, a, b) {
        return Container(
          width: double.infinity,
          height: 300.rpx,
        );
      },
    );
  }

// 2. 材料列表

  Widget buildMeterials(List<String> list) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.rpx),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.rpx),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              // 尽可能大的撑开父容器
              physics: NeverScrollableScrollPhysics(),
              // 禁止容器滚动
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Card(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        list[index],
                      ),
                    ));
              },
            ),
          ),
        ),
      ),
    );
  }

// 3. 制作步骤

}
