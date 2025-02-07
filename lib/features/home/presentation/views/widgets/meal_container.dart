import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/size_config.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';
import 'package:recipe_app/features/home/presentation/view_models/fetch_meal_details_by_id_cubit/fetch_meal_details_by_id_cubit.dart';
import 'package:shimmer/shimmer.dart';

class MealContainer extends StatelessWidget {
  const MealContainer({super.key, required this.mealModel});
  final MealModel mealModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<FetchMealDetailsByIdCubit>(context)
            .fetchMealDetailsById(int.parse(mealModel.idMeal!));
        GoRouter.of(context).push(AppRouter.kMealDetailsView);
      },
      child: SizedBox(
        height: SizeConfig.height / 8,
        child: Row(
          children: [
            CachedNetworkImage(
              fadeOutDuration: Duration.zero,
              placeholder: (context, url) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(
                    width: SizeConfig.width / 3.6,
                    color: Colors.white,
                  ),
                );
              },
              imageUrl: mealModel.strMealThumb!,
              errorWidget: (context, url, error) {
                return const Icon(Icons.error);
              },
            ),
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
      ),
    );
  }
}
