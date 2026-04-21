import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:provider/provider.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        IconButton(
          icon: const Icon(Icons.close),
          color: Colors.red,
          onPressed: () {
            uiController.deselectRecipe();
          },
        ),
        SizedBox(height: 20,),
        Text(
        recipe.name,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        recipe.customImage(),
        Text(recipe.description, 
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
