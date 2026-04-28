import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/recipe_area.dart';
import 'package:lab2/widgets/time_control.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [_controlPanel(context), RecipeArea()]),
    );
  }

  Widget _controlPanel(BuildContext context, {double width = 320}) {
    return Container(
      width: width,
      color: AppTheme.colorScheme.primaryContainer,
      child: const Column(
        children: [
          SizedBox(height: 40),
          Text(
            "Receptsök",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text("Hitta ett recept som passar genom att ändra"),
          Text("Inställningarna nedanför"),
          SizedBox(height: 20),
          IngredientControl(),
          KitchenControl(),
          SizedBox(height: 20),
          Text('Svårighetsgrad'),
          DifficultyControl(),
          SizedBox(height: 20),
          Text('Maxpris:'),
          PriceControl(),
          SizedBox(height: 20),
          Text('Maxtid:'),
          TimeControl(),
        ],
      ),
    );
  }
}
