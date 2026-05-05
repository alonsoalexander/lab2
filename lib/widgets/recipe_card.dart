import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/util/cuisine.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';
import 'package:provider/provider.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard(this.recipe, {this.onTap, super.key});

  final Recipe recipe;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: Colors.blue.withAlpha(30),
        onTap: onTap,
        child: SizedBox(
          height: 128,
          child: Row(
            children: [
              _image(recipe),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 8.0, top: 8.0, bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(recipe.name, style: AppTheme.mediumHeading),
                      Column(
                        children: [
                          Text(
                            recipe.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          MainIngredient.icon(recipe.mainIngredient, width: 20) ?? const SizedBox(),
                          const SizedBox(width: 10),
                          Difficulty.icon(recipe.difficulty, width: 40) ?? const SizedBox(),
                          const SizedBox(width: 10),
                          Text('${recipe.time} minuter'),
                          const SizedBox(width: 8),
                          Text('${recipe.price} kr'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image(Recipe recipe) {
    var square = ClipRect(
      child: Container(
        width: 104,
        height: 128,
        child: FittedBox(fit: BoxFit.cover, child: recipe.image),
      ),
    );
    var flagImage = Cuisine.flag(recipe.cuisine, width: 24.0);

    return Stack(
      children: [
        square,
        if (flagImage != null) Positioned(bottom: 8, right: 8, child: flagImage),
      ],
    );
  }
}