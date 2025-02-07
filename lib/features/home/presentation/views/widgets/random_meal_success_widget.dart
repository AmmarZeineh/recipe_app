import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/core/utils/size_config.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/meal_details_widget.dart';
import 'package:shimmer/shimmer.dart';

class MealDetailsSuccessWidget extends StatelessWidget {
  const MealDetailsSuccessWidget({
    super.key,
    required this.mealModel,
  });

  final MealModel mealModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    fadeOutDuration: Duration.zero,
                    placeholder: (context, url) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          width: SizeConfig.width - 32,
                          height: SizeConfig.height / 2.4,
                          color: Colors.white,
                        ),
                      );
                    },
                    imageUrl: mealModel.strMealThumb!,
                    errorWidget: (context, url, error) {
                      return const Icon(Icons.error);
                    },
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                MealDetailsWidget(
                  title: 'Meal Name: ',
                  subTitle: mealModel.strMeal!,
                ),
                MealDetailsWidget(
                  title: 'Meal Area: ',
                  subTitle: mealModel.strArea!,
                ),
                const SizedBox(
                  height: 4,
                ),
                MealDetailsWidget(
                  title: 'Meal Category: ',
                  subTitle: mealModel.strCategory!,
                ),
                const SizedBox(
                  height: 4,
                ),
                const MealDetailsWidget(
                  title: 'Meal Instructions: ',
                  subTitle: null,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  mealModel.strInstructions!,
                  style: AppFonts.styleBold12(context).copyWith(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          SliverList.builder(
            itemCount: mealModel.ingredientList.length,
            itemBuilder: (context, index) {
              return MealDetailsWidget(
                title: 'Ingredient ${index + 1}: ',
                subTitle: mealModel.ingredientList[index],
                measure: mealModel.measureList[index],
              );
            },
          )
        ],
      ),
    );
  }
}
