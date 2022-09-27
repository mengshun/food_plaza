import 'package:flutter/material.dart';
import 'package:food_plaza/core/extensions/int_extension.dart';
import 'package:food_plaza/core/model/metal.dart';
import 'package:food_plaza/core/viewmodel/favorite_view_model.dart';
import 'package:food_plaza/ui/pages/home/detail/operation_item.dart';
import 'package:food_plaza/ui/pages/home/meal_detail/MSMealDetailPage.dart';
import 'package:provider/provider.dart';

class MSHomeDetailItem extends StatelessWidget {
  final MsMetal _meal;

  const MSHomeDetailItem(this._meal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(MSMealDetailPage.routeName, arguments: _meal);
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.rpx),
        ),
        margin: EdgeInsets.all(10.rpx),
        child: Column(
          children: [
            buidBasicInfo(),
            buildOperationInfo(),
          ],
        ),
      ),
    );
  }

  Widget buidBasicInfo() {
    final cardRadius = 12.rpx;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cardRadius),
            topRight: Radius.circular(cardRadius),
          ),
          child: Image.network(
            _meal.imageUrl ?? "",
            width: double.infinity,
            height: 250.rpx,
            fit: BoxFit.cover,
            errorBuilder: (context, a, b) {
              return Container(
                width: double.infinity,
                height: 250.rpx,
              );
            },
          ),
        ),
        Positioned(
          bottom: 20.rpx,
          right: 10.rpx,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.rpx, horizontal: 30.rpx),
            width: 250.rpx,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(6.rpx),
            ),
            child: FittedBox(
              child: Text(
                _meal.title ?? "",
                style: TextStyle(
                  fontSize: 30.rpx,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildOperationInfo() {
    var compStr = "简单";
    if (_meal.complexity == 1) {
      compStr = "中等";
    } else if (_meal.complexity == 2) {
      compStr = "困难";
    }
    return Padding(
      padding: EdgeInsets.all(16.rpx),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MSHomeOperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
          MSHomeOperationItem(Icon(Icons.restaurant), "${compStr}难度"),
          Consumer<MSFavoriteViewModel>(
            builder: (BuildContext context, value, Widget? child) {
              bool hasFavotite = value.hasFavorite(_meal.id);
              Color color = Colors.grey;
              String title = "未收藏";
              if (hasFavotite) {
                color = Colors.red;
                title = "已收藏";
              }
              return GestureDetector(
                onTap: () {
                  if (hasFavotite) {
                    value.removeFavorite(_meal.id ?? "");
                  } else {
                    value.addFavorite(_meal.id ?? "");
                  }
                },
                child: MSHomeOperationItem(
                    Icon(
                      Icons.favorite,
                      color: color,
                    ),
                    title),
              );
            },
          ),
        ],
      ),
    );
  }
}
