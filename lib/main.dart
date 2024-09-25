import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'favorites_screen.dart';
import 'favorite_recipes.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoriteRecipes(),
      child: RecipeBookApp(),
    ),
  );
}

class RecipeBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/favorites': (context) => FavoritesScreen(),
      },
    );
  }
}
