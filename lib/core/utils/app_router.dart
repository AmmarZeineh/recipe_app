import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/home/presentation/views/home_view.dart';
import 'package:recipe_app/features/home/presentation/views/meal_details_view.dart';
import 'package:recipe_app/features/home/presentation/views/random_meal_view.dart';
import 'package:recipe_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kRandomMealView = '/randomMealView';
  static const kMealDetailsView = '/MealDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
      ),
      GoRoute(
        path: kRandomMealView,
        builder: (BuildContext context, GoRouterState state) =>
            const RandomMealView(),
      ),
      GoRoute(
        path: kMealDetailsView,
        builder: (BuildContext context, GoRouterState state) =>
            const MealDetailsView(),
      ),
    ],
  );
}
