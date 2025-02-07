import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/random_meal_view_body.dart';

class RandomMealView extends StatelessWidget {
  const RandomMealView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RandomMealViewBody(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Meal Details',
          style: AppFonts.styleBold14(context).copyWith(color: Colors.white),
        ),
        backgroundColor: AppColors.primary.primary60,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    );
  }
}
