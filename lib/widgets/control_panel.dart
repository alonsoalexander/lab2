import 'package:flutter/material.dart';
import 'package:lab2/app_theme.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/logo.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({super.key});

  @override
  Widget build(BuildContext context, {double width = 320}) {
    return Container(
      width: width,
      color: AppTheme.colorScheme.primaryContainer,
      child: const Column(
        children: [
          SizedBox(height: 40),
          Logo(),
          SizedBox(height: 40),
          Text("Hitta ett recept som passar genom att ändra"),
          Text("Inställningarna nedanför"),
          SizedBox(height: 20),
          IngredientControl(), 
          KitchenControl(),
          SizedBox(height: 20),
          Text('Svårighetsgrad', style: TextStyle(fontWeight: FontWeight.bold)),
          DifficultyControl(),
          SizedBox(height: 20),
          Text('Maxpris:', style: TextStyle(fontWeight: FontWeight.bold)),
          PriceControl(),
          SizedBox(height: 20),
          Text('Maxtid:', style: TextStyle(fontWeight: FontWeight.bold)),
          TimeControl(),
        ],
      ),
    );
  }
}
