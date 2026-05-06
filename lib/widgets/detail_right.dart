import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';

class DetailRight extends StatelessWidget {
  const DetailRight(this.recipe,{super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
        recipe.name,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        Text(recipe.description, 
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),

    );
  }
}