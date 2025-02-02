import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/inactive_active_category_container.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer(
      {super.key, required this.isActive, required this.title});

  final bool isActive;
  final String title;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveCategoryContainer(
            title: title,
          )
        : InActiveCategoryContainer(
            title: title,
          );
  }
}
