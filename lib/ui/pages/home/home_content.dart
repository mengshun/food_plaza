import 'package:flutter/material.dart';
import 'package:food_plaza/core/extensions/int_extension.dart';
import 'package:food_plaza/core/model/MSCategoryModel.dart';
import 'package:food_plaza/core/services/json_parse.dart';
import 'package:food_plaza/ui/pages/home/detail/home_detail.dart';

class MSHomeContent extends StatelessWidget {
  const MSHomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MSCategoryJsonParse.getCategoryData(),
        builder: (context, snapShot) {
          if (!snapShot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final list = snapShot.data ?? [];
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.rpx,
                mainAxisSpacing: 20.rpx,
                childAspectRatio: 1.5),
            padding: EdgeInsets.all(20.rpx),
            itemCount: list.length,
            itemBuilder: (context, index) {
              var item = list[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(MSHomeDetailPage.routeName, arguments: item);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: item.cColor ?? Colors.red,
                    borderRadius: BorderRadius.circular(12.rpx),
                    gradient: LinearGradient(colors: [
                      (item.cColor ?? Colors.red).withOpacity(0.5),
                      item.cColor ?? Colors.red,
                    ]),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    item.title ?? "",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
