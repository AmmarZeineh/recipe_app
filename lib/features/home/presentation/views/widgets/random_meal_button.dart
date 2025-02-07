import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/features/home/presentation/view_models/fetch_random_meal_cubit/fetch_random_meal_cubit.dart';

class RandomMealButton extends StatelessWidget {
  const RandomMealButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: AppColors.primary.primary50),
      onPressed: () {
        context.push(AppRouter.kRandomMealView);
        BlocProvider.of<FetchRandomMealCubit>(context).fetchRandomMeal();
      },
      child: const Text(
        'Try a Random Meal',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
