import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/meal_container.dart';

class MealsListViewBuilder extends StatelessWidget {
  const MealsListViewBuilder({
    super.key,
    required this.mealsList,
  });
  final List<MealModel> mealsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: MealContainer(mealModel: mealsList[index]),
          );
        },
        itemCount: mealsList.length,
      ),
    );
  }
}
