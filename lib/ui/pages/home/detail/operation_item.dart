import 'package:flutter/material.dart';
import 'package:food_plaza/core/extensions/int_extension.dart';

class MSHomeOperationItem extends StatelessWidget {
  final Widget child;
  final String title;

  const MSHomeOperationItem(
    this.child,
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        child,
        SizedBox(
          width: 4.rpx,
        ),
        Text(title),
      ],
    );
  }
}
