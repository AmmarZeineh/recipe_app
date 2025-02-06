import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/core/utils/size_config.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/presentation/view_models/fetch_meals_by_category_cubit/fetch_meals_by_category_cubit.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/meals_list_view_builder.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_category_section.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/shimmer_meal.dart';
import 'package:shimmer/shimmer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              'Find best recipes for cooking',
              style: AppFonts.styleBold24(context)
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const CustomTextField(),
            const SizedBox(height: 16),
            const PopularCategorySection(),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<FetchMealsByCategoryCubit, FetchMealsByCategoryState>(
              builder: (context, state) {
                if (state is FetchMealsByCategorySuccess) {
                  List<MealModel> mealsList =
                      BlocProvider.of<FetchMealsByCategoryCubit>(context)
                          .mealsList;
                  return MealsListViewBuilder(mealsList: mealsList);
                } else if (state is FetchMealsByCategoryFailure) {
                  return Center(
                    child: Text(state.err),
                  );
                } else {
                  return Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: SizedBox(
                        height: SizeConfig.height / 1.62,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.only(bottom: 12),
                              child: ShimmerMeal(),
                            );
                          },
                        ),
                      ));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
