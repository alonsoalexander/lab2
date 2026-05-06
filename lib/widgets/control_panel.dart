import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/logo.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';
import 'package:lab2/widgets/title_description.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({super.key});

  @override
  Widget build(BuildContext context, {double width = 320}) {
    return Container(
      width: width,
      //color: AppTheme.colorScheme.primaryContainer,
      child: const Column(
        children: [
          SizedBox(height: 40),
          Logo(),
          SizedBox(height: 20),
          TitleDescription(),
          Padding(padding: const EdgeInsets.all(20),
          child: Column(
            children: [    
          
          IngredientControl(), 
          KitchenControl(),
              ],
            )
          ),
          DifficultyControl(),
          SizedBox(height: 20),
          PriceControl(),
          SizedBox(height: 20),
          TimeControl(),
        ],
      ),
    );
  }
}
