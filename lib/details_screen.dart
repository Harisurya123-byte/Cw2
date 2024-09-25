import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String recipeName;

  DetailsScreen({required this.recipeName});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ingredients for ${widget.recipeName}',
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
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
