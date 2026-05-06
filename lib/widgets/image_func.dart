import 'package:flutter/cupertino.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/util/cuisine.dart';

class ImageFunc {
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
        if (flagImage != null)
          Positioned(bottom: 8, right: 8, child: flagImage),
      ],
    );
  }
}
