import 'package:either_dart/either.dart';
import 'package:recipe_app/core/utils/errors/failures.dart';
import 'package:recipe_app/features/home/data/models/meal_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MealModel>>> fetchMealsByCategory(
      String category);
  Future<Either<Failure, MealModel>> fetchRandomMeal();
}
