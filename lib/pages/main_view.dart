import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/recipe_list.dart';
import 'package:lab2/widgets/time_control.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlPanel(context), _recipeArea(context)]),
    );
  }

  Widget _controlPanel(BuildContext context, {double width = 320}) {
    return Container(
      width: width,
      color: const Color.fromARGB(255, 193, 210, 218),
      child: const Column(
        children: [
          Text("Receptsök"),
          Text("Hitta ett recept som passar genom att ändra"),
          Text("Inställningarna nedanför"),
          SizedBox(height: 20),

          Row( children: [
            Text("Ingrediens"),
            IngredientControl(),
        ]),
          Row(children: [
            Text("Kök"),
            KitchenControl(),
        ]),
        SizedBox(height: 20),
        Text('Svårighetsgrad'),
        DifficultyControl(),
        SizedBox(height: 20),
        Text('Maxpris:'),
        PriceControl(),
        SizedBox(height: 20),
        Text('Maxtid:'),
        TimeControl(),
        
        ]),
    );
  }

  Widget _recipeArea(context) {
    return Expanded(
      child: Container(
        //color: const Color.fromARGB(255, 204, 216, 176),
      child: RecipeList(),
      ),
      
    );
  }
}
