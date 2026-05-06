import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';
import 'package:lab2/widgets/detail_left.dart';
import 'package:lab2/widgets/detail_right.dart';
import 'package:provider/provider.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column( 
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        IconButton( 
          icon: const Icon(Icons.close),
          color: AppTheme.colorScheme.primary,
          onPressed: () {
            uiController.deselectRecipe();
          },
        ),
        ]
        ),
        Row(children: [
          DetailLeft(recipe),
          DetailRight(recipe)
        ],
        )
        ],
      ),
    );
  }
}
