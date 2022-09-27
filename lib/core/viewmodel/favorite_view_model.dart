import 'package:flutter/material.dart';

class MSFavoriteViewModel extends ChangeNotifier {
  final Set<String> _favoriteSet = {};

  bool hasFavorite(String? id) {
    return _favoriteSet.contains(id);
  }

  List<String> get favoriteList => _favoriteSet.toList();

  addFavorite(String id) {
    _favoriteSet.add(id);
    notifyListeners();
  }

  removeFavorite(String id) {
    _favoriteSet.remove(id);
    notifyListeners();
  }
}
