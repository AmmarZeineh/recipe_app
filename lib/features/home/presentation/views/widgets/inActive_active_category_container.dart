import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';

class InActiveCategoryContainer extends StatelessWidget {
  const InActiveCategoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.neutral.white,
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          child: Text(
            'Salad',
            style: AppFonts.styleBold12(context).copyWith(
                color: AppColors.primary.primary30,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class ActiveCategoryContainer extends StatelessWidget {
  const ActiveCategoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primary.primary50,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
          child: Text(
            'Salad',
            style: AppFonts.styleBold12(context)
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
