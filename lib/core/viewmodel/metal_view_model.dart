

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:food_plaza/core/model/metal.dart';

class MSMetalViewModel extends ChangeNotifier {
  final List<MsMetal> _metals = [];
  List<MsMetal> get metals => _metals;
  MSMetalViewModel(){
    loadData();
  }

  loadData() async {
    final jsonString = await rootBundle.loadString("assets/json/meal.json");
    final jsonDic = json.decode(jsonString);
    final meals = jsonDic["meal"];
    final List<MsMetal> list = [];
    for (var meal in meals) {
      list.add(MsMetal.fromJson(meal));
    }
    _metals.addAll(list);
    print("meatls total count: ${_metals.length}");
    notifyListeners();
  }

}