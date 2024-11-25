import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/category_container.dart';

class CategoriesListViewBuilder extends StatefulWidget {
  const CategoriesListViewBuilder({super.key});

  @override
  State<CategoriesListViewBuilder> createState() =>
      _CategoriesListViewBuilderState();
}

class _CategoriesListViewBuilderState extends State<CategoriesListViewBuilder> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
                print(currentIndex);
              },
              child: CategoryContainer(
                isActive: index == currentIndex,
              ),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
