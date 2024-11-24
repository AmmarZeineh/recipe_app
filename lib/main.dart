import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_router.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
