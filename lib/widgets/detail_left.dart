import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';

class DetailLeft extends StatelessWidget {
  const DetailLeft(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [_image(recipe)]));
  }

  Widget _image(Recipe recipe) {
    // Vi returnerar hela "paketet" direkt
    return ClipRRect(
      // Ger runda hörn på vänster sida (topp och botten)
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
      child: SizedBox(
        width: 104,
        height: 128, // Samma höjd som hela ditt kort
        child: FittedBox(
          fit:
              BoxFit
                  .cover, // Ser till att bilden fyller ut hela ytan utan att bli ihoptryckt
          child: recipe.image,
        ),
      ),
    );
  }
}
