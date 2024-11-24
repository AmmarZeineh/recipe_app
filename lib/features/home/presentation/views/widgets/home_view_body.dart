import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/custom_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 12,
            ),
            Text(
              'Find best recipes for cooking',
              style: AppFonts.styleBold32(context)
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const CustomTextField()
          ],
        ),
      ),
    );
  }
}
