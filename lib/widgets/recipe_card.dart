import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';
import 'package:provider/provider.dart';
import 'package:lab2/util/main_ingredient.dart';
import 'package:lab2/model/recipe_database/recipe.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: 128,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.close),
              color: Colors.red,
              onPressed: () {
                uiController.deselectRecipe();
              },
            ),
            recipe.image,
            Expanded(
              child: Column(
                children: [
                  Text(recipe.name, style: AppTheme.mediumHeading),
                  Row(children: [
                    SizedBox(width: 10,),
                    MainIngredient.icon(recipe.mainIngredient,width: 20)?? const SizedBox(),
                    SizedBox(width: 10,),
                    Difficulty.icon(recipe.difficulty, width: 40)?? const SizedBox(),
                    SizedBox(width: 10,),
                    Text('${recipe.time} minuter'),
                    SizedBox(width: 8,),
                    Text('${recipe.price} kr'),

                    ]
                    ),
                  Text(
                    recipe.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Row(children: [Text(recipe.instruction)]),
                ],
              ),
            ),
          ],
        ), 
      ),
    );
  }
}
