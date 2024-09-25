import 'package:flutter/material.dart';

class FavoriteRecipes extends ChangeNotifier {
  final List<String> _favoriteRecipes = [];

  List<String> get favoriteRecipes => _favoriteRecipes;

  void toggleFavorite(String recipe) {
    if (_favoriteRecipes.contains(recipe)) {
      _favoriteRecipes.remove(recipe);
    } else {
      _favoriteRecipes.add(recipe);
    }
    notifyListeners();
  }

  bool isFavorite(String recipe) {
    return _favoriteRecipes.contains(recipe);
  }
}
