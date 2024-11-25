import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_fonts.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/categories_list_view_builder.dart';

class PopularCategorySection extends StatelessWidget {
  const PopularCategorySection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Popular category',
          style: AppFonts.styleBold20(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 8,
        ),
        const CategoriesListViewBuilder()
      ]),
    );
  }
}
