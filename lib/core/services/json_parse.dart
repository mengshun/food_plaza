import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_plaza/core/model/MSCategoryModel.dart';

class MSCategoryJsonParse {
  static Future<List<MSCategoryModel>> getCategoryData() async {
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    final result = json.decode(jsonString);
    final resultList = result["category"];
    final List<MSCategoryModel> res = [];
    for (var obj in resultList) {
      res.add(MSCategoryModel.fromJson(obj));
    }
    return res;
  }
}