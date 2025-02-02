import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/core/utils/size_config.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';

class MealContainer extends StatelessWidget {
  const MealContainer({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.height / 8,
      child: Row(
        children: [
          Image.network(mealModel.strMealThumb!),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  mealModel.strMeal!,
                  style: AppFonts.styleBold14(context),
                ),
                const SizedBox(
                  height: 8,
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
