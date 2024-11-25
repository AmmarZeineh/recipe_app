import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/inActive_active_category_container.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? const ActiveCategoryContainer()
        : const InActiveCategoryContainer();
  }
}
