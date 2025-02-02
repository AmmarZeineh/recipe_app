import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/api.dart';
import 'package:recipe_app/features/home/data/repos/home_repo_impl.dart';
import 'package:recipe_app/features/home/presentation/view_models/fetch_meals_by_category_cubit/fetch_meals_by_category_cubit.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (BuildContext context) =>
              FetchMealsByCategoryCubit(HomeRepoImpl(Api()))
                ..fetchMealsByCategory("Seafood"),
          child: const HomeViewBody()),
    );
  }
}
