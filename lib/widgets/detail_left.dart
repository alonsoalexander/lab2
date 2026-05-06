import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/cuisine.dart';

class DetailLeft extends StatelessWidget {
  const DetailLeft(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: _image(recipe)),
        //const SizedBox(height: 10),
        Padding(padding: const EdgeInsets.only(left: 60, top: 10),
        child: Column(
        children: [
        Text('ingredients', style: AppTheme.mediumHeadingBold),
        Text(recipe.ingredients.join('\n')),
        ],
        )
      
        )
      ],
    );
  }

  Widget _image(Recipe recipe) {
    var square = ClipRect(
      child: Container(
        width: 300,
        height: 300,
        child: FittedBox(fit: BoxFit.cover, child: recipe.image),
      ),
    );
    var flagImage = Cuisine.flag(recipe.cuisine, width: 50.0);

    return Stack(
      children: [
        square,
        if (flagImage != null)
          Positioned(bottom: 8, right: 8, child: flagImage),
      ],
    );
  }
}
