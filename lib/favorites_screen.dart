import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<String> favoriteRecipes = ['Spaghetti']; // Replace this with actual favorites

  @override
  Widget build(BuildContext context) {
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
