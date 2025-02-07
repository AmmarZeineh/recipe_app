import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/utils/api.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/size_config.dart';
import 'package:recipe_app/features/home/data/repos/home_repo_impl.dart';
import 'package:recipe_app/features/home/presentation/view_models/fetch_random_meal_cubit/fetch_random_meal_cubit.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>
                FetchRandomMealCubit(HomeRepoImpl(Api())))
      ],
      child: MaterialApp.router(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
