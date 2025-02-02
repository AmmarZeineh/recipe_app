import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/features/home/presentation/view_models/fetch_meals_by_category_cubit/fetch_meals_by_category_cubit.dart';
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
                  BlocProvider.of<FetchMealsByCategoryCubit>(context)
                      .fetchMealsByCategory(categoriesList[index]);
                  currentIndex = index;
                });
              },
              child: CategoryContainer(
                isActive: index == currentIndex,
                title: categoriesList[index],
              ),
            ),
          );
        },
        itemCount: categoriesList.length,
      ),
    );
  }
}
