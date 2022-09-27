import 'package:flutter/material.dart';

class MSCategoryModel {
  String? id;
  String? title;
  String? color;
  Color? cColor;

  MSCategoryModel({this.id, this.title, this.color});

  MSCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
    final colorV = int.parse(color ?? "", radix: 16);
    cColor = Color(0xFF000000 | colorV);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}