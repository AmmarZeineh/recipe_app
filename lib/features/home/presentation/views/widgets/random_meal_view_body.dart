import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/presentation/view_models/fetch_random_meal_cubit/fetch_random_meal_cubit.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/random_meal_success_widget.dart';

class RandomMealViewBody extends StatelessWidget {
  const RandomMealViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchRandomMealCubit, FetchRandomMealState>(
      builder: (context, state) {
        if (state is FetchRandomMealSuccess) {
          MealModel mealModel = state.mealModel;
          return RandomMealSuccessWidget(mealModel: mealModel);
        } else if (state is FetchRandomMealFailure) {
          return Center(
            child: Text(state.err),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
