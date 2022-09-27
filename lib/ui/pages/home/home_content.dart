
import 'package:flutter/material.dart';
import 'package:food_plaza/core/extensions/int_extension.dart';
import 'package:food_plaza/core/model/MSCategoryModel.dart';
import 'package:food_plaza/core/services/json_parse.dart';

class MSHomeContent extends StatefulWidget {
  const MSHomeContent({
    Key? key,
  }) : super(key: key);

  @override
  State<MSHomeContent> createState() => _MSHomeContentState();
}

class _MSHomeContentState extends State<MSHomeContent> {

  List<MSCategoryModel> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    CategoryJsonParse.getCategoryData().then((value) {
      setState(() {
        list = value;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 20.rpx,
      mainAxisSpacing: 20.rpx,
      childAspectRatio: 1.5
    ),
      padding: EdgeInsets.all(20.rpx),
      itemCount: list.length,
      itemBuilder: (context, index) {
        var item = list[index];
      return Container(
        decoration: BoxDecoration(
          color: item.cColor ?? Colors.red,
          borderRadius: BorderRadius.circular(12.rpx),
          gradient: LinearGradient(
            colors: [
              (item.cColor ?? Colors.red).withOpacity(0.5),
              item.cColor ?? Colors.red,
            ]
          ),
        ),
        alignment: Alignment.center, 
        child: Text(item.title ?? "", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      );
    },
    );
  }
}