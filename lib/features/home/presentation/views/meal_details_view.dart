import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/features/home/presentation/view_models/fetch_meal_details_by_id_cubit/fetch_meal_details_by_id_cubit.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/random_meal_success_widget.dart';

class MealDetailsView extends StatelessWidget {
  const MealDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FetchMealDetailsByIdCubit, FetchMealDetailsByIdState>(
        builder: (context, state) {
          if (state is FetchMealDetailsByIdSuccess) {
            return MealDetailsSuccessWidget(
                mealModel: BlocProvider.of<FetchMealDetailsByIdCubit>(context)
                    .mealModel!);
          } else if (state is FetchMealDetailsByIdFailure) {
            return Center(
              child: Text(state.err),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
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
