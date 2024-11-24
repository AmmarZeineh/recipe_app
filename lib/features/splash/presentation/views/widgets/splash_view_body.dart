import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/core/utils/app_images.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/widgets/custom_button.dart';
import 'package:recipe_app/features/splash/presentation/views/widgets/splash_view_header.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image.asset(
            fit: BoxFit.fill,
            Assets.coreAssetsImagesAppStarting,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const SizedBox(
                  height: 57,
                ),
                const SplashViewHeader(),
                const Spacer(),
                Text(
                  r'Let’s',
                  style: AppFonts.styleBold56(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.neutral.white),
                ),
                Text(
                  'Cooking',
                  style: AppFonts.styleBold56(context).copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.neutral.white),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Fined best recipes for cooking',
                  style: AppFonts.styleBold16(context).copyWith(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  onPressed: () {
                    context.pushReplacement(AppRouter.kHomeView);
                  },
                  title: 'Start cooking',
                ),
                const SizedBox(
                  height: 65,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
