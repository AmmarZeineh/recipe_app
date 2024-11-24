import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/core/utils/app_images.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Image.asset(Assets.coreAssetsImagesSearchIcon)),
          hintText: 'Search recipes',
          hintStyle: AppFonts.styleBold14(context).copyWith(
            fontWeight: FontWeight.w400,
            color: const Color(0xFFAAAAAA),
          ),
          fillColor: Colors.white,
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: AppColors.neutral.neutral30,
      ),
    );
  }
}
