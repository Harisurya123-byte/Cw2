import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_recipes.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteRecipes = Provider.of<FavoriteRecipes>(context).favoriteRecipes;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Recipes'),
      ),
      body: ListView.builder(
        itemCount: favoriteRecipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteRecipes[index]),
          );
        },
      ),
    );
  }
}
