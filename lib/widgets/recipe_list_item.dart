import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/widgets/recipe_card.dart';

class RecipeListItem extends StatelessWidget {
  const RecipeListItem(this.recipe, {required this.onTap, super.key});

  final Recipe recipe;
  final void Function() onTap;

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onTap, // Ser till att hela kortet blir klickbart
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: RecipeCard(recipe), // Här använder du din egen skräddarsydda widget!
    ),
  );
}
}
