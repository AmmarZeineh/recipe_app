import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_colors.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/core/utils/app_images.dart';
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
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
