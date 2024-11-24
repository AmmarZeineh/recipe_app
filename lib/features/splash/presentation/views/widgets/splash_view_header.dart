import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';

class SplashViewHeader extends StatelessWidget {
  const SplashViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
        ),
        Text(
          ' 60k+',
          style: AppFonts.styleBold16(context).copyWith(
              fontWeight: FontWeight.w600, color: AppColors.neutral.white),
        ),
        Text(
          ' Premium recipes',
          style: AppFonts.styleBold16(context).copyWith(
              fontWeight: FontWeight.w400, color: AppColors.neutral.white),
        ),
      ],
    );
  }
}
