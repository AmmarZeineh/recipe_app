import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 0,
        backgroundColor: AppColors.primary.primary50,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Start Cooking',
          style: AppFonts.styleBold16(context)
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}