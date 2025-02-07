import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';

class MealDetailsWidget extends StatelessWidget {
  const MealDetailsWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.measure,
  });

  final String title;
  final String? subTitle;
  final String? measure;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            title,
            style: AppFonts.styleBold14(context),
          ),
        ),
        Expanded(
          child: Text(
            subTitle ?? ' ',
            style: AppFonts.styleBold14(context)
                .copyWith(fontWeight: FontWeight.normal, color: Colors.grey),
          ),
        ),
        FittedBox(
          child: Text(
            measure ?? ' ',
            style: AppFonts.styleBold12(context)
                .copyWith(fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
}
