import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_recipes.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;

  DetailsScreen({required this.recipeName});

  @override
  Widget build(BuildContext context) {
    final favoriteRecipes = Provider.of<FavoriteRecipes>(context);
    final isFavorite = favoriteRecipes.isFavorite(recipeName);

    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients for $recipeName',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Add recipe ingredients here
            SizedBox(height: 10),
            Text('Recipe instructions go here...'),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
              label: Text(isFavorite ? 'Unmark as Favorite' : 'Mark as Favorite'),
              onPressed: () {
                favoriteRecipes.toggleFavorite(recipeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
