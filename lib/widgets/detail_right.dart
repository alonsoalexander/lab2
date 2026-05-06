import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/difficulty.dart';
import 'package:lab2/util/main_ingredient.dart';

class DetailRight extends StatelessWidget {
  const DetailRight(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recipe.name, style: AppTheme.largeHeading),
          const SizedBox(height: 16),
          Row(
            //Icons
            children: [
              MainIngredient.icon(recipe.mainIngredient, width: 20) ??
                  const SizedBox(),
              const SizedBox(width: 10),
              Difficulty.icon(recipe.difficulty, width: 40) ?? const SizedBox(),
              const SizedBox(width: 10),
              Text('${recipe.time} minuter'),
              const SizedBox(width: 8),
              Text('${recipe.price} kr'),
            ],
          ),
          const SizedBox(height: 2),
          Text(recipe.description, style: AppTheme.description),
          const SizedBox(height: 16),
          SizedBox(height: 5,),
          Text('Tillagning', style: AppTheme.mediumHeadingBold,),
          Text(recipe.instruction, style: AppTheme.smallHeading),
        ],
      ),
    );
  }
}
